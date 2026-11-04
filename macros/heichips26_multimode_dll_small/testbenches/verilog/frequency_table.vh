// Measured routed oscillator at TT, 20 fF load; no physical phase model.
// Source summary SHA256: 82720e98e975a76f3838d61963a5b00bbaf510b4f01e1d5a06ebff4e02b11236
function real frequency_mhz(input integer code);
begin
case(code)
0: frequency_mhz = 253.570372208069;
1: frequency_mhz = 238.216096300336;
2: frequency_mhz = 225.320155878685;
3: frequency_mhz = 211.274984053141;
4: frequency_mhz = 196.094328168082;
5: frequency_mhz = 184.411247159222;
6: frequency_mhz = 176.228178534039;
7: frequency_mhz = 169.439445654140;
8: frequency_mhz = 161.829510295187;
9: frequency_mhz = 155.641781169333;
10: frequency_mhz = 149.938981755494;
11: frequency_mhz = 143.937899154369;
12: frequency_mhz = 138.754929047624;
13: frequency_mhz = 133.378002227249;
14: frequency_mhz = 126.290178034200;
15: frequency_mhz = 119.981437516617;
16: frequency_mhz = 114.641737242972;
17: frequency_mhz = 110.076657512468;
18: frequency_mhz = 105.162974591434;
19: frequency_mhz = 100.874971309238;
20: frequency_mhz = 97.108097766649;
21: frequency_mhz = 93.487605452131;
22: frequency_mhz = 89.769779660618;
23: frequency_mhz = 86.584022340531;
24: frequency_mhz = 83.424142888058;
25: frequency_mhz = 80.644728892581;
26: frequency_mhz = 78.183629043574;
27: frequency_mhz = 75.642941669097;
28: frequency_mhz = 72.960957316426;
29: frequency_mhz = 70.477608573573;
30: frequency_mhz = 68.335829373462;
31: frequency_mhz = 66.301624729238;
32: frequency_mhz = 64.503205056131;
33: frequency_mhz = 62.566859498570;
34: frequency_mhz = 60.710759709031;
35: frequency_mhz = 59.003815163335;
36: frequency_mhz = 57.455681908430;
37: frequency_mhz = 56.049759252220;
38: frequency_mhz = 54.466976620476;
39: frequency_mhz = 53.195854959896;
default: frequency_mhz = 0.0;
endcase
end
endfunction
