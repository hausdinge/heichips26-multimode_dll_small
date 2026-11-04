`timescale 1ns/1ps
`default_nettype none
`include "cell_map.v"
`include "output_divider.v"
module divider_tb;
    reg clk=0,resetb=0,run_resetb=0;
    reg [4:0] n0=0,n1=0;
    wire q0,q1;
    real half_period=1.25;
    integer edges0=0,edges1=0,a,b,f,cycles;
    reg measuring=0;
    output_divider d0(.in(clk),.out(q0),.N(n0),.resetb(resetb),.run_resetb(run_resetb));
    output_divider d1(.in(clk),.out(q1),.N(n1),.resetb(resetb),.run_resetb(run_resetb));
    always #(half_period) clk=!clk;
    always @(posedge q0) if(measuring) edges0=edges0+1;
    always @(posedge q1) if(measuring) edges1=edges1+1;
    task automatic check_count(input integer n,count);
        integer expected;
        begin
            expected=n==1?0:cycles/(n==0?1:n);
            if(count<expected-1 || count>expected+1) $fatal(1,"N=%0d edges=%0d expected=%0d",n,count,expected);
        end
    endtask
    initial begin
        cycles=992;
        for(f=0;f<2;f=f+1) begin
            half_period=f==0?5.0:1.25;
            for(a=0;a<32;a=a+1) begin
                for(b=0;b<32;b=b+1) begin
                    resetb=0;run_resetb=0;n0=a;n1=b;#20;
                    @(negedge clk);resetb=1;
                    repeat(8) @(negedge clk);
                    run_resetb=1;
                    repeat(64) @(negedge clk);
                    edges0=0;edges1=0;measuring=1;
                    repeat(cycles) @(negedge clk);
                    measuring=0;
                    check_count(a,edges0);check_count(b,edges1);
                    if(a==b && q0!==q1) $fatal(1,"Equal divisors have different phase");
                end
            end
        end
        $display("TEST_PASS all 1024 divider pairs at 100 and 400 MHz");
        $finish;
    end
    initial begin #100000000;$fatal(1,"Divider watchdog");end
endmodule
`default_nettype wire
