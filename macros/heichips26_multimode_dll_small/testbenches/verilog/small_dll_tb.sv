`timescale 1ns/1ps
`default_nettype none
module small_dll_tb;
    reg clk=0, rst_n=1, ena=1;
    reg ref_running=1;
    real ref_half=5.0;
    reg [7:0] ui_in=0, uio_in=0;
    wire [7:0] uo_out, uio_out, uio_oe;
    wire analog_0,analog_1,analog_2;
    heichips26_multimode_dll_small dut (.*);
    always begin
        #(ref_half);
        if (ref_running) clk=!clk;
        else clk=0;
    end
    integer warmup_ns=10000,measure_ns=100000,acquire_timeout_ns=20000000,watchdog_ns=150000000;
    integer c0=0,c1=0,case_count=0,coincident=0;
    reg measuring=0, require_lock=0;
    real latest0=-1e9,latest1=-1e9;
    real phase_limit_ns=0.5, max_phase_skew=0;
    real last_edge0=0, last_edge1=0, minimum_pulse0=0, minimum_pulse1=0;
    integer active_div0=0,active_div1=0;
    integer root_edges=0, root_epoch=0, previous_root0=-1, previous_root1=-1;
    reg epoch_valid=0;
`ifdef GL
    wire source_clock=dut.core.\u_dll/ring_clk ;
    wire counters_running=dut.core.\u_dll/run_resetb ;
`else
    wire source_clock=dut.u_dll.ring_clk;
    wire counters_running=dut.u_dll.run_resetb;
`endif
    always @(posedge source_clock) begin
        root_edges=root_edges+1;
        if(counters_running===1'b1 && !epoch_valid) begin
            root_epoch=root_edges;
            epoch_valid=1;
        end
    end
    string sdf_path;
    always @(posedge analog_0) begin
        latest0=$realtime;
        if(measuring) begin
            c0=c0+1;
            if(!epoch_valid || active_div0==1 || (root_edges-root_epoch)%divisor(active_div0)!=0)
                $fatal(1,"Clock0 does not follow the common source epoch");
            if(previous_root0>=0 && root_edges-previous_root0!=divisor(active_div0))
                $fatal(1,"Clock0 duplicated or skipped a source cycle");
            previous_root0=root_edges;
            if($realtime-latest1 < phase_limit_ns) begin
                coincident=coincident+1;
                if($realtime-latest1 > max_phase_skew) max_phase_skew=$realtime-latest1;
            end
        end
    end
    always @(posedge analog_1) begin
        latest1=$realtime;
        if(measuring) begin
            c1=c1+1;
            if(!epoch_valid || active_div1==1 || (root_edges-root_epoch)%divisor(active_div1)!=0)
                $fatal(1,"Clock1 does not follow the common source epoch");
            if(previous_root1>=0 && root_edges-previous_root1!=divisor(active_div1))
                $fatal(1,"Clock1 duplicated or skipped a source cycle");
            previous_root1=root_edges;
            if($realtime-latest0 < phase_limit_ns) begin
                coincident=coincident+1;
                if($realtime-latest0 > max_phase_skew) max_phase_skew=$realtime-latest0;
            end
        end
    end
    always @(analog_0) begin
        if(measuring && ($isunknown(analog_0) || $realtime-last_edge0 < minimum_pulse0))
            $fatal(1,"Clock0 unknown level or runt pulse");
        last_edge0=$realtime;
    end
    always @(analog_0) begin
        #0.5;
        if(measuring && uo_out[0] !== analog_0) $fatal(1,"Clock0 fabric/pad mismatch");
    end
    always @(analog_1) begin
        if(measuring && ($isunknown(analog_1) || $realtime-last_edge1 < minimum_pulse1))
            $fatal(1,"Clock1 unknown level or runt pulse");
        last_edge1=$realtime;
    end
    always @(analog_1) begin
        #0.5;
        if(measuring && uo_out[1] !== analog_1) $fatal(1,"Clock1 fabric/pad mismatch");
    end
    always @(negedge uo_out[2])
        if(require_lock) $fatal(1,"Lock dropped during measurement");
    task automatic wait_lock;
        real start_time;
        begin
            start_time=$realtime;
            while(uo_out[2]!==1'b1 && $realtime-start_time < acquire_timeout_ns) #100;
            if(uo_out[2]!==1'b1) $fatal(1,"FLL acquisition timeout");
            $display("LOCK time_ns=%0.3f elapsed_ns=%0.3f",$realtime,$realtime-start_time);
        end
    endtask
    function automatic integer divisor(input integer value);
        divisor=(value==0)?1:value;
    endfunction
    function automatic integer gcd(input integer a,input integer b);
        integer tmp;
        begin
            while(b!=0) begin tmp=a%b;a=b;b=tmp;end
            gcd=a;
        end
    endfunction
    task automatic run_case(input real ref_mhz,input integer mult,d0,d1);
        reg [14:0] config_value;
        real ring_target,f0,f1,e0,e1,common_expected,start_time;
        begin
            rst_n=0;ena=0;require_lock=0;measuring=0;
            root_edges=0;root_epoch=0;epoch_valid=0;
            ref_half=500.0/ref_mhz;ref_running=1;
            config_value={5'(d1),5'(d0),5'(mult)};
            {uio_in,ui_in}={1'b0,config_value};
            active_div0=d0;active_div1=d1;
            // Bypass omits the divider flip-flop propagation delay. Registered
            // outputs have a tighter skew budget; both use one source epoch.
            phase_limit_ns=(d0==0 || d1==0)?1.0:0.5;
            minimum_pulse0=d0==1?0:0.35*1000.0*divisor(d0)/(ref_mhz*mult);
            minimum_pulse1=d1==1?0:0.35*1000.0*divisor(d1)/(ref_mhz*mult);
            #500;rst_n=1;#100;ena=1;
            wait_lock();
            #(warmup_ns);
            if(uo_out[2]!==1'b1) $fatal(1,"Lock was not retained through warmup");
            c0=0;c1=0;coincident=0;max_phase_skew=0;previous_root0=-1;previous_root1=-1;measuring=1;require_lock=1;
            #(measure_ns);
            measuring=0;require_lock=0;
            f0=1e3*c0/measure_ns;f1=1e3*c1/measure_ns;
            ring_target=ref_mhz*mult;
            e0=d0==1?0:ring_target/divisor(d0);
            e1=d1==1?0:ring_target/divisor(d1);
            if(e0==0 && (c0!=0 || analog_0!==1'b0)) $fatal(1,"Divider0 code 1 did not stop");
            if(e1==0 && (c1!=0 || analog_1!==1'b0)) $fatal(1,"Divider1 code 1 did not stop");
            if(e0>0 && (f0<e0*0.98 || f0>e0*1.02)) $fatal(1,"Clock0 frequency %f expected %f",f0,e0);
            if(e1>0 && (f1<e1*0.98 || f1>e1*1.02)) $fatal(1,"Clock1 frequency %f expected %f",f1,e1);
            if(d0!=1 && d1!=1) begin
                common_expected=measure_ns*ring_target/1000.0*gcd(divisor(d0),divisor(d1))/(divisor(d0)*divisor(d1));
                if(coincident < common_expected*0.95-2 || coincident > common_expected*1.05+2)
                    $fatal(1,"Relative phase: %d coincident edges, expected %f",coincident,common_expected);
            end
            if(uio_out!==0 || uio_oe!==0 || analog_2!==0 || uo_out[7:3]!==0)
                $fatal(1,"Unused outputs are not zero");
            $display("RESULT ref_mhz=%0.6f multiply=%0d divide0=%0d divide1=%0d f0_mhz=%0.6f f1_mhz=%0.6f coincident=%0d max_skew_ns=%0.3f",ref_mhz,mult,d0,d1,f0,f1,coincident,max_phase_skew);
            case_count=case_count+1;
        end
    endtask
    initial begin
        if($value$plusargs("WARMUP_NS=%d",warmup_ns)) begin end
        if($value$plusargs("MEASURE_NS=%d",measure_ns)) begin end
        if($value$plusargs("ACQUIRE_TIMEOUT_NS=%d",acquire_timeout_ns)) begin end
        if($value$plusargs("WATCHDOG_NS=%d",watchdog_ns)) begin end
`ifdef GL
        if(!$value$plusargs("SDF=%s",sdf_path)) $fatal(1,"Missing SDF");
        $display("SDF_PATH %s", sdf_path);
        $sdf_annotate(sdf_path,dut.core);
        $fflush();
`endif
        #1; // Apply a real reset assertion after initialization.
        run_case(100.0,1,0,3);
        run_case(100.0,2,2,3);
        run_case(20.0,11,3,5);
        run_case(10.0,24,5,5);
        run_case(5.0,31,31,7);
        run_case(10.0,20,1,2);
        // A missing reference must clear lock; restarting must reacquire.
        ref_running=0;#100000;
        if(uo_out[2]!==0) $fatal(1,"Reference loss retained lock");
        ref_running=1;wait_lock();
        // Disable and reset stop both outputs; re-enable starts from one epoch.
        ena=0;#500;
        if(analog_0!==0 || analog_1!==0 || uo_out[2]!==0) $fatal(1,"Disable did not stop outputs");
        run_case(20.0,10,2,2);
        rst_n=0;#500;
        if(analog_0!==0 || analog_1!==0 || uo_out[2]!==0) $fatal(1,"Reset did not stop outputs");
        {uio_in,ui_in}=16'b0;rst_n=1;#100000;
        if(uo_out[2]!==0) $fatal(1,"Invalid multiplier zero asserted lock");
        $display("TEST_PASS small DLL %0d frequency/phase cases, reference loss, reset and enable",case_count);
        $finish;
    end
    initial begin
        #1;
        #(watchdog_ns);
        $fatal(1,"Global simulation watchdog");
    end
endmodule
`default_nettype wire
