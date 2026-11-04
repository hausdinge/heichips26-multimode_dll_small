`timescale 1ns/1ps
// Optional observer: capture a settled top-level window for the report.
module wave_capture;
    integer capture_ns=250;
    initial begin
        if($value$plusargs("CAPTURE_NS=%d",capture_ns)) begin end
        wait (small_dll_tb.measuring);
        $dumpfile("waveform.vcd");
        $dumpvars(1, small_dll_tb);
        #(capture_ns);
        $display("WAVEFORM_CAPTURE_COMPLETE");
        $finish;
    end
endmodule
