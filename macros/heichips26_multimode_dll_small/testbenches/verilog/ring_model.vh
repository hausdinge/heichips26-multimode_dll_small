// Functional frequency model only; physical startup and pulses require SPICE/SDF.
`include "frequency_table.vh"
`include "trim_map.vh"
reg model_clk = 0;
assign clk_out = model_clk;
integer level;
real half_period_ns;
initial forever begin
    level = trim_level(trim);
    if (reset || level < 0) begin
        model_clk = 0;
        #0.1;
    end else begin
        half_period_ns = 500.0 / frequency_mhz(level);
        #(half_period_ns);
        if (reset) model_clk = 0;
        else model_clk = !model_clk;
    end
end
