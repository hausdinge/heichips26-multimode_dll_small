module heichips26_multimode_dll_small (analog_0,
    analog_1,
    analog_2,
    clk,
    ena,
    rst_n,
    ui_in,
    uio_in,
    uio_oe,
    uio_out,
    uo_out);
 output analog_0;
 output analog_1;
 output analog_2;
 input clk;
 input ena;
 input rst_n;
 input [7:0] ui_in;
 input [7:0] uio_in;
 output [7:0] uio_oe;
 output [7:0] uio_out;
 output [7:0] uo_out;

 wire net101;
 wire clk0;
 wire clk1;
 wire stable;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net125;
 wire \u_dll/_00_ ;
 wire \u_dll/_01_ ;
 wire \u_dll/_02_ ;
 wire \u_dll/_03_ ;
 wire \u_dll/_04_ ;
 wire \u_dll/_05_ ;
 wire \u_dll/_06_ ;
 wire \u_dll/_07_ ;
 wire \u_dll/_08_ ;
 wire \u_dll/_09_ ;
 wire \u_dll/_10_ ;
 wire \u_dll/_11_ ;
 wire \u_dll/_12_ ;
 wire \u_dll/_13_ ;
 wire \u_dll/_14_ ;
 wire \u_dll/_15_ ;
 wire net123;
 wire net127;
 wire \u_dll/active_resetb ;
 wire \u_dll/controller_ref_clk ;
 wire \u_dll/controller_ring_clk ;
 wire \u_dll/divider_clk[0] ;
 wire \u_dll/divider_clk[1] ;
 wire \u_dll/divider_resetb[0] ;
 wire \u_dll/divider_resetb[1] ;
 wire \u_dll/enable_buffered ;
 wire \u_dll/locked ;
 wire \u_dll/release_sync[0] ;
 wire \u_dll/release_sync[1] ;
 wire \u_dll/reset ;
 wire \u_dll/resetb_buffered ;
 wire \u_dll/ring_clk ;
 wire \u_dll/ring_reset ;
 wire \u_dll/run_resetb ;
 wire \u_dll/startup[0] ;
 wire \u_dll/startup[1] ;
 wire \u_dll/startup[2] ;
 wire \u_dll/startup[3] ;
 wire \u_dll/startup[4] ;
 wire \u_dll/startup_clk ;
 wire \u_dll/trim[0] ;
 wire \u_dll/trim[10] ;
 wire \u_dll/trim[11] ;
 wire \u_dll/trim[12] ;
 wire \u_dll/trim[13] ;
 wire \u_dll/trim[14] ;
 wire \u_dll/trim[15] ;
 wire \u_dll/trim[16] ;
 wire \u_dll/trim[17] ;
 wire \u_dll/trim[18] ;
 wire \u_dll/trim[19] ;
 wire \u_dll/trim[1] ;
 wire \u_dll/trim[20] ;
 wire \u_dll/trim[21] ;
 wire \u_dll/trim[22] ;
 wire \u_dll/trim[23] ;
 wire \u_dll/trim[24] ;
 wire \u_dll/trim[25] ;
 wire \u_dll/trim[2] ;
 wire \u_dll/trim[3] ;
 wire \u_dll/trim[4] ;
 wire \u_dll/trim[5] ;
 wire \u_dll/trim[6] ;
 wire \u_dll/trim[7] ;
 wire \u_dll/trim[8] ;
 wire \u_dll/trim[9] ;
 wire \u_dll/u_control/_0000_ ;
 wire \u_dll/u_control/_0001_ ;
 wire \u_dll/u_control/_0002_ ;
 wire \u_dll/u_control/_0003_ ;
 wire \u_dll/u_control/_0004_ ;
 wire \u_dll/u_control/_0005_ ;
 wire \u_dll/u_control/_0006_ ;
 wire \u_dll/u_control/_0007_ ;
 wire \u_dll/u_control/_0008_ ;
 wire \u_dll/u_control/_0009_ ;
 wire \u_dll/u_control/_0010_ ;
 wire \u_dll/u_control/_0011_ ;
 wire \u_dll/u_control/_0012_ ;
 wire \u_dll/u_control/_0013_ ;
 wire \u_dll/u_control/_0014_ ;
 wire \u_dll/u_control/_0015_ ;
 wire \u_dll/u_control/_0016_ ;
 wire \u_dll/u_control/_0017_ ;
 wire \u_dll/u_control/_0018_ ;
 wire \u_dll/u_control/_0019_ ;
 wire \u_dll/u_control/_0020_ ;
 wire \u_dll/u_control/_0021_ ;
 wire \u_dll/u_control/_0022_ ;
 wire \u_dll/u_control/_0023_ ;
 wire \u_dll/u_control/_0024_ ;
 wire \u_dll/u_control/_0025_ ;
 wire \u_dll/u_control/_0026_ ;
 wire \u_dll/u_control/_0027_ ;
 wire \u_dll/u_control/_0028_ ;
 wire \u_dll/u_control/_0029_ ;
 wire \u_dll/u_control/_0030_ ;
 wire \u_dll/u_control/_0031_ ;
 wire \u_dll/u_control/_0032_ ;
 wire \u_dll/u_control/_0033_ ;
 wire \u_dll/u_control/_0034_ ;
 wire \u_dll/u_control/_0035_ ;
 wire \u_dll/u_control/_0036_ ;
 wire \u_dll/u_control/_0037_ ;
 wire \u_dll/u_control/_0038_ ;
 wire \u_dll/u_control/_0039_ ;
 wire \u_dll/u_control/_0040_ ;
 wire \u_dll/u_control/_0041_ ;
 wire \u_dll/u_control/_0042_ ;
 wire \u_dll/u_control/_0043_ ;
 wire \u_dll/u_control/_0044_ ;
 wire \u_dll/u_control/_0045_ ;
 wire \u_dll/u_control/_0046_ ;
 wire \u_dll/u_control/_0047_ ;
 wire \u_dll/u_control/_0048_ ;
 wire \u_dll/u_control/_0049_ ;
 wire \u_dll/u_control/_0050_ ;
 wire \u_dll/u_control/_0051_ ;
 wire \u_dll/u_control/_0052_ ;
 wire \u_dll/u_control/_0053_ ;
 wire \u_dll/u_control/_0054_ ;
 wire \u_dll/u_control/_0055_ ;
 wire \u_dll/u_control/_0056_ ;
 wire \u_dll/u_control/_0057_ ;
 wire \u_dll/u_control/_0058_ ;
 wire \u_dll/u_control/_0059_ ;
 wire \u_dll/u_control/_0060_ ;
 wire \u_dll/u_control/_0061_ ;
 wire \u_dll/u_control/_0062_ ;
 wire \u_dll/u_control/_0063_ ;
 wire \u_dll/u_control/_0064_ ;
 wire \u_dll/u_control/_0065_ ;
 wire \u_dll/u_control/_0066_ ;
 wire \u_dll/u_control/_0067_ ;
 wire \u_dll/u_control/_0068_ ;
 wire \u_dll/u_control/_0069_ ;
 wire \u_dll/u_control/_0070_ ;
 wire \u_dll/u_control/_0071_ ;
 wire \u_dll/u_control/_0072_ ;
 wire \u_dll/u_control/_0073_ ;
 wire \u_dll/u_control/_0074_ ;
 wire \u_dll/u_control/_0075_ ;
 wire \u_dll/u_control/_0076_ ;
 wire \u_dll/u_control/_0077_ ;
 wire \u_dll/u_control/_0078_ ;
 wire \u_dll/u_control/_0079_ ;
 wire \u_dll/u_control/_0080_ ;
 wire \u_dll/u_control/_0081_ ;
 wire \u_dll/u_control/_0082_ ;
 wire \u_dll/u_control/_0083_ ;
 wire \u_dll/u_control/_0084_ ;
 wire \u_dll/u_control/_0085_ ;
 wire \u_dll/u_control/_0086_ ;
 wire \u_dll/u_control/_0087_ ;
 wire \u_dll/u_control/_0088_ ;
 wire \u_dll/u_control/_0089_ ;
 wire \u_dll/u_control/_0090_ ;
 wire \u_dll/u_control/_0091_ ;
 wire \u_dll/u_control/_0092_ ;
 wire \u_dll/u_control/_0093_ ;
 wire \u_dll/u_control/_0094_ ;
 wire \u_dll/u_control/_0095_ ;
 wire \u_dll/u_control/_0096_ ;
 wire \u_dll/u_control/_0097_ ;
 wire \u_dll/u_control/_0098_ ;
 wire \u_dll/u_control/_0099_ ;
 wire \u_dll/u_control/_0100_ ;
 wire \u_dll/u_control/_0101_ ;
 wire \u_dll/u_control/_0102_ ;
 wire \u_dll/u_control/_0103_ ;
 wire \u_dll/u_control/_0104_ ;
 wire \u_dll/u_control/_0105_ ;
 wire \u_dll/u_control/_0106_ ;
 wire \u_dll/u_control/_0107_ ;
 wire \u_dll/u_control/_0108_ ;
 wire \u_dll/u_control/_0109_ ;
 wire \u_dll/u_control/_0110_ ;
 wire \u_dll/u_control/_0111_ ;
 wire \u_dll/u_control/_0112_ ;
 wire \u_dll/u_control/_0113_ ;
 wire \u_dll/u_control/_0114_ ;
 wire \u_dll/u_control/_0115_ ;
 wire \u_dll/u_control/_0116_ ;
 wire \u_dll/u_control/_0117_ ;
 wire \u_dll/u_control/_0118_ ;
 wire \u_dll/u_control/_0119_ ;
 wire \u_dll/u_control/_0120_ ;
 wire \u_dll/u_control/_0121_ ;
 wire \u_dll/u_control/_0122_ ;
 wire \u_dll/u_control/_0123_ ;
 wire \u_dll/u_control/_0124_ ;
 wire \u_dll/u_control/_0125_ ;
 wire \u_dll/u_control/_0126_ ;
 wire \u_dll/u_control/_0127_ ;
 wire \u_dll/u_control/_0128_ ;
 wire \u_dll/u_control/_0129_ ;
 wire \u_dll/u_control/_0130_ ;
 wire \u_dll/u_control/_0131_ ;
 wire \u_dll/u_control/_0132_ ;
 wire \u_dll/u_control/_0133_ ;
 wire \u_dll/u_control/_0134_ ;
 wire \u_dll/u_control/_0135_ ;
 wire \u_dll/u_control/_0136_ ;
 wire \u_dll/u_control/_0137_ ;
 wire \u_dll/u_control/_0138_ ;
 wire \u_dll/u_control/_0139_ ;
 wire \u_dll/u_control/_0140_ ;
 wire \u_dll/u_control/_0141_ ;
 wire \u_dll/u_control/_0142_ ;
 wire \u_dll/u_control/_0143_ ;
 wire \u_dll/u_control/_0144_ ;
 wire \u_dll/u_control/_0145_ ;
 wire \u_dll/u_control/_0146_ ;
 wire \u_dll/u_control/_0147_ ;
 wire \u_dll/u_control/_0148_ ;
 wire \u_dll/u_control/_0149_ ;
 wire \u_dll/u_control/_0150_ ;
 wire \u_dll/u_control/_0151_ ;
 wire \u_dll/u_control/_0152_ ;
 wire \u_dll/u_control/_0153_ ;
 wire \u_dll/u_control/_0154_ ;
 wire \u_dll/u_control/_0155_ ;
 wire \u_dll/u_control/_0156_ ;
 wire \u_dll/u_control/_0157_ ;
 wire \u_dll/u_control/_0158_ ;
 wire \u_dll/u_control/_0159_ ;
 wire \u_dll/u_control/_0160_ ;
 wire \u_dll/u_control/_0161_ ;
 wire \u_dll/u_control/_0162_ ;
 wire \u_dll/u_control/_0163_ ;
 wire \u_dll/u_control/_0164_ ;
 wire \u_dll/u_control/_0165_ ;
 wire \u_dll/u_control/_0166_ ;
 wire \u_dll/u_control/_0167_ ;
 wire \u_dll/u_control/_0168_ ;
 wire net128;
 wire \u_dll/u_control/_0170_ ;
 wire \u_dll/u_control/_0171_ ;
 wire \u_dll/u_control/_0172_ ;
 wire \clknet_0_u_dll/controller_ref_clk ;
 wire \u_dll/u_control/_0174_ ;
 wire \u_dll/u_control/_0175_ ;
 wire \u_dll/u_control/_0176_ ;
 wire \u_dll/u_control/_0177_ ;
 wire \u_dll/u_control/_0178_ ;
 wire \u_dll/u_control/_0179_ ;
 wire \u_dll/u_control/_0180_ ;
 wire \u_dll/u_control/_0181_ ;
 wire \u_dll/u_control/_0182_ ;
 wire \u_dll/u_control/_0183_ ;
 wire \u_dll/u_control/_0184_ ;
 wire \u_dll/u_control/_0185_ ;
 wire \u_dll/u_control/_0186_ ;
 wire \u_dll/u_control/_0187_ ;
 wire \u_dll/u_control/_0188_ ;
 wire \u_dll/u_control/_0189_ ;
 wire \u_dll/u_control/_0190_ ;
 wire \u_dll/u_control/_0191_ ;
 wire \u_dll/u_control/_0192_ ;
 wire \u_dll/u_control/_0193_ ;
 wire \u_dll/u_control/_0194_ ;
 wire \u_dll/u_control/_0195_ ;
 wire \u_dll/u_control/_0196_ ;
 wire \u_dll/u_control/_0197_ ;
 wire \u_dll/u_control/_0198_ ;
 wire \u_dll/u_control/_0199_ ;
 wire \u_dll/u_control/_0200_ ;
 wire \u_dll/u_control/_0201_ ;
 wire \u_dll/u_control/_0202_ ;
 wire \u_dll/u_control/_0203_ ;
 wire \u_dll/u_control/_0204_ ;
 wire \u_dll/u_control/_0205_ ;
 wire \u_dll/u_control/_0206_ ;
 wire \u_dll/u_control/_0207_ ;
 wire \u_dll/u_control/_0208_ ;
 wire \u_dll/u_control/_0209_ ;
 wire \u_dll/u_control/_0210_ ;
 wire \u_dll/u_control/_0211_ ;
 wire \u_dll/u_control/_0212_ ;
 wire \u_dll/u_control/_0213_ ;
 wire \u_dll/u_control/_0214_ ;
 wire \u_dll/u_control/_0215_ ;
 wire \u_dll/u_control/_0216_ ;
 wire \u_dll/u_control/_0217_ ;
 wire \u_dll/u_control/_0218_ ;
 wire \u_dll/u_control/_0219_ ;
 wire \u_dll/u_control/_0220_ ;
 wire \u_dll/u_control/_0221_ ;
 wire \u_dll/u_control/_0222_ ;
 wire \u_dll/u_control/_0223_ ;
 wire \u_dll/u_control/_0224_ ;
 wire \u_dll/u_control/_0225_ ;
 wire \u_dll/u_control/_0226_ ;
 wire \u_dll/u_control/_0227_ ;
 wire \u_dll/u_control/_0228_ ;
 wire \u_dll/u_control/_0229_ ;
 wire \u_dll/u_control/_0230_ ;
 wire \u_dll/u_control/_0231_ ;
 wire \u_dll/u_control/_0232_ ;
 wire \u_dll/u_control/_0233_ ;
 wire \u_dll/u_control/_0234_ ;
 wire \u_dll/u_control/_0235_ ;
 wire \u_dll/u_control/_0236_ ;
 wire \u_dll/u_control/_0237_ ;
 wire \u_dll/u_control/_0238_ ;
 wire \u_dll/u_control/_0239_ ;
 wire \u_dll/u_control/_0240_ ;
 wire \u_dll/u_control/_0241_ ;
 wire \u_dll/u_control/_0242_ ;
 wire \u_dll/u_control/_0243_ ;
 wire \u_dll/u_control/_0244_ ;
 wire \u_dll/u_control/_0245_ ;
 wire \u_dll/u_control/_0246_ ;
 wire \u_dll/u_control/_0247_ ;
 wire \u_dll/u_control/_0248_ ;
 wire \u_dll/u_control/_0249_ ;
 wire \u_dll/u_control/_0250_ ;
 wire \u_dll/u_control/_0251_ ;
 wire \u_dll/u_control/_0252_ ;
 wire \u_dll/u_control/_0253_ ;
 wire \u_dll/u_control/_0254_ ;
 wire \u_dll/u_control/_0255_ ;
 wire \u_dll/u_control/_0256_ ;
 wire \u_dll/u_control/_0257_ ;
 wire \u_dll/u_control/_0258_ ;
 wire \u_dll/u_control/_0259_ ;
 wire \u_dll/u_control/_0260_ ;
 wire \u_dll/u_control/_0261_ ;
 wire \u_dll/u_control/_0262_ ;
 wire \u_dll/u_control/_0263_ ;
 wire \u_dll/u_control/_0264_ ;
 wire \u_dll/u_control/_0265_ ;
 wire \u_dll/u_control/_0266_ ;
 wire \u_dll/u_control/_0267_ ;
 wire \u_dll/u_control/_0268_ ;
 wire \u_dll/u_control/_0269_ ;
 wire \u_dll/u_control/_0270_ ;
 wire \u_dll/u_control/_0271_ ;
 wire \u_dll/u_control/_0272_ ;
 wire \u_dll/u_control/_0273_ ;
 wire \u_dll/u_control/_0274_ ;
 wire \u_dll/u_control/_0275_ ;
 wire \u_dll/u_control/_0276_ ;
 wire \u_dll/u_control/_0277_ ;
 wire \u_dll/u_control/_0278_ ;
 wire \u_dll/u_control/_0279_ ;
 wire \u_dll/u_control/_0280_ ;
 wire \u_dll/u_control/_0281_ ;
 wire \u_dll/u_control/_0282_ ;
 wire \u_dll/u_control/_0283_ ;
 wire \u_dll/u_control/_0284_ ;
 wire \u_dll/u_control/_0285_ ;
 wire \u_dll/u_control/_0286_ ;
 wire \u_dll/u_control/_0287_ ;
 wire \u_dll/u_control/_0288_ ;
 wire \u_dll/u_control/_0289_ ;
 wire \u_dll/u_control/_0290_ ;
 wire \u_dll/u_control/_0291_ ;
 wire \u_dll/u_control/_0292_ ;
 wire \u_dll/u_control/_0293_ ;
 wire \u_dll/u_control/_0294_ ;
 wire \u_dll/u_control/_0295_ ;
 wire \u_dll/u_control/_0296_ ;
 wire \u_dll/u_control/_0297_ ;
 wire \u_dll/u_control/_0298_ ;
 wire \u_dll/u_control/_0299_ ;
 wire \u_dll/u_control/_0300_ ;
 wire \u_dll/u_control/_0301_ ;
 wire \u_dll/u_control/_0302_ ;
 wire \u_dll/u_control/_0303_ ;
 wire \u_dll/u_control/_0304_ ;
 wire \u_dll/u_control/_0305_ ;
 wire \u_dll/u_control/_0306_ ;
 wire \u_dll/u_control/_0307_ ;
 wire \u_dll/u_control/_0308_ ;
 wire \u_dll/u_control/_0309_ ;
 wire \u_dll/u_control/_0310_ ;
 wire \u_dll/u_control/_0311_ ;
 wire \u_dll/u_control/_0312_ ;
 wire \u_dll/u_control/_0313_ ;
 wire \u_dll/u_control/_0314_ ;
 wire \u_dll/u_control/_0315_ ;
 wire \u_dll/u_control/_0316_ ;
 wire \u_dll/u_control/_0317_ ;
 wire \u_dll/u_control/_0318_ ;
 wire \u_dll/u_control/_0319_ ;
 wire \u_dll/u_control/_0320_ ;
 wire \u_dll/u_control/_0321_ ;
 wire \u_dll/u_control/_0322_ ;
 wire \u_dll/u_control/_0323_ ;
 wire \u_dll/u_control/_0324_ ;
 wire \u_dll/u_control/_0325_ ;
 wire \u_dll/u_control/_0326_ ;
 wire \u_dll/u_control/_0327_ ;
 wire \u_dll/u_control/_0328_ ;
 wire \u_dll/u_control/_0329_ ;
 wire \u_dll/u_control/_0330_ ;
 wire \u_dll/u_control/_0331_ ;
 wire \u_dll/u_control/_0332_ ;
 wire \u_dll/u_control/_0333_ ;
 wire \u_dll/u_control/_0334_ ;
 wire \u_dll/u_control/_0335_ ;
 wire \u_dll/u_control/_0336_ ;
 wire \u_dll/u_control/_0337_ ;
 wire \u_dll/u_control/_0338_ ;
 wire \u_dll/u_control/_0339_ ;
 wire \u_dll/u_control/_0340_ ;
 wire \u_dll/u_control/_0341_ ;
 wire \u_dll/u_control/_0342_ ;
 wire \u_dll/u_control/_0343_ ;
 wire \u_dll/u_control/_0344_ ;
 wire \u_dll/u_control/_0345_ ;
 wire \u_dll/u_control/_0346_ ;
 wire \u_dll/u_control/_0347_ ;
 wire \u_dll/u_control/_0348_ ;
 wire \u_dll/u_control/_0349_ ;
 wire \u_dll/u_control/_0350_ ;
 wire \u_dll/u_control/_0351_ ;
 wire \u_dll/u_control/_0352_ ;
 wire \u_dll/u_control/_0353_ ;
 wire \u_dll/u_control/_0354_ ;
 wire \u_dll/u_control/_0355_ ;
 wire \u_dll/u_control/_0356_ ;
 wire \u_dll/u_control/_0357_ ;
 wire \u_dll/u_control/_0358_ ;
 wire \u_dll/u_control/_0359_ ;
 wire \u_dll/u_control/_0360_ ;
 wire \u_dll/u_control/_0361_ ;
 wire \u_dll/u_control/_0362_ ;
 wire \u_dll/u_control/_0363_ ;
 wire \u_dll/u_control/_0364_ ;
 wire \u_dll/u_control/_0365_ ;
 wire \u_dll/u_control/_0366_ ;
 wire \u_dll/u_control/_0367_ ;
 wire \u_dll/u_control/_0368_ ;
 wire \u_dll/u_control/_0369_ ;
 wire \u_dll/u_control/_0370_ ;
 wire \u_dll/u_control/_0371_ ;
 wire \u_dll/u_control/_0372_ ;
 wire \u_dll/u_control/_0373_ ;
 wire \u_dll/u_control/_0374_ ;
 wire \u_dll/u_control/_0375_ ;
 wire \u_dll/u_control/_0376_ ;
 wire \u_dll/u_control/_0377_ ;
 wire \u_dll/u_control/_0378_ ;
 wire \u_dll/u_control/_0379_ ;
 wire \u_dll/u_control/_0380_ ;
 wire \u_dll/u_control/_0381_ ;
 wire \u_dll/u_control/_0382_ ;
 wire \u_dll/u_control/_0383_ ;
 wire \u_dll/u_control/_0384_ ;
 wire \u_dll/u_control/_0385_ ;
 wire \u_dll/u_control/_0386_ ;
 wire \u_dll/u_control/_0387_ ;
 wire \u_dll/u_control/_0388_ ;
 wire \u_dll/u_control/_0389_ ;
 wire \u_dll/u_control/_0390_ ;
 wire \u_dll/u_control/_0391_ ;
 wire \u_dll/u_control/_0392_ ;
 wire \u_dll/u_control/_0393_ ;
 wire \u_dll/u_control/_0394_ ;
 wire \u_dll/u_control/_0395_ ;
 wire \u_dll/u_control/_0396_ ;
 wire \u_dll/u_control/_0397_ ;
 wire \u_dll/u_control/_0398_ ;
 wire \u_dll/u_control/_0399_ ;
 wire \u_dll/u_control/_0400_ ;
 wire \u_dll/u_control/_0401_ ;
 wire \u_dll/u_control/_0402_ ;
 wire \u_dll/u_control/_0403_ ;
 wire \u_dll/u_control/_0404_ ;
 wire \u_dll/u_control/_0405_ ;
 wire \u_dll/u_control/_0406_ ;
 wire \u_dll/u_control/_0407_ ;
 wire \u_dll/u_control/_0408_ ;
 wire \u_dll/u_control/_0409_ ;
 wire \u_dll/u_control/_0410_ ;
 wire \u_dll/u_control/_0411_ ;
 wire \u_dll/u_control/_0412_ ;
 wire \u_dll/u_control/_0413_ ;
 wire \u_dll/u_control/_0414_ ;
 wire \u_dll/u_control/_0415_ ;
 wire \u_dll/u_control/_0416_ ;
 wire \u_dll/u_control/_0417_ ;
 wire \u_dll/u_control/_0418_ ;
 wire \u_dll/u_control/_0419_ ;
 wire \u_dll/u_control/_0420_ ;
 wire \u_dll/u_control/_0421_ ;
 wire \u_dll/u_control/_0422_ ;
 wire \u_dll/u_control/_0423_ ;
 wire \u_dll/u_control/_0424_ ;
 wire \u_dll/u_control/_0425_ ;
 wire \u_dll/u_control/_0426_ ;
 wire \u_dll/u_control/_0427_ ;
 wire \u_dll/u_control/_0428_ ;
 wire \u_dll/u_control/_0429_ ;
 wire \u_dll/u_control/_0430_ ;
 wire \u_dll/u_control/_0431_ ;
 wire \u_dll/u_control/_0432_ ;
 wire \u_dll/u_control/_0433_ ;
 wire \u_dll/u_control/_0434_ ;
 wire \u_dll/u_control/_0435_ ;
 wire \u_dll/u_control/_0436_ ;
 wire \u_dll/u_control/_0437_ ;
 wire \u_dll/u_control/_0438_ ;
 wire \u_dll/u_control/_0439_ ;
 wire \u_dll/u_control/_0440_ ;
 wire \u_dll/u_control/_0441_ ;
 wire \u_dll/u_control/_0442_ ;
 wire \u_dll/u_control/_0443_ ;
 wire \u_dll/u_control/_0444_ ;
 wire \u_dll/u_control/_0445_ ;
 wire \u_dll/u_control/_0446_ ;
 wire \u_dll/u_control/_0447_ ;
 wire \u_dll/u_control/_0448_ ;
 wire \u_dll/u_control/_0449_ ;
 wire \u_dll/u_control/_0450_ ;
 wire \u_dll/u_control/_0451_ ;
 wire \u_dll/u_control/_0452_ ;
 wire \u_dll/u_control/_0453_ ;
 wire \u_dll/u_control/_0454_ ;
 wire \u_dll/u_control/_0455_ ;
 wire \u_dll/u_control/_0456_ ;
 wire \u_dll/u_control/_0457_ ;
 wire \u_dll/u_control/_0458_ ;
 wire \u_dll/u_control/_0459_ ;
 wire \u_dll/u_control/_0460_ ;
 wire \u_dll/u_control/_0461_ ;
 wire \u_dll/u_control/_0462_ ;
 wire \u_dll/u_control/_0463_ ;
 wire \u_dll/u_control/_0464_ ;
 wire \u_dll/u_control/_0465_ ;
 wire \u_dll/u_control/_0466_ ;
 wire \u_dll/u_control/_0467_ ;
 wire \u_dll/u_control/_0468_ ;
 wire \u_dll/u_control/_0469_ ;
 wire \u_dll/u_control/_0470_ ;
 wire \u_dll/u_control/_0471_ ;
 wire \u_dll/u_control/_0472_ ;
 wire \u_dll/u_control/_0473_ ;
 wire \u_dll/u_control/_0474_ ;
 wire \u_dll/u_control/_0475_ ;
 wire \u_dll/u_control/_0476_ ;
 wire \u_dll/u_control/_0477_ ;
 wire \u_dll/u_control/_0478_ ;
 wire \u_dll/u_control/_0479_ ;
 wire \u_dll/u_control/_0480_ ;
 wire \u_dll/u_control/_0481_ ;
 wire \u_dll/u_control/_0482_ ;
 wire \u_dll/u_control/_0483_ ;
 wire \u_dll/u_control/_0484_ ;
 wire \u_dll/u_control/_0485_ ;
 wire \u_dll/u_control/_0486_ ;
 wire \u_dll/u_control/_0487_ ;
 wire \u_dll/u_control/_0488_ ;
 wire \u_dll/u_control/_0489_ ;
 wire \u_dll/u_control/_0490_ ;
 wire \u_dll/u_control/_0491_ ;
 wire \u_dll/u_control/_0492_ ;
 wire \u_dll/u_control/_0493_ ;
 wire \u_dll/u_control/_0494_ ;
 wire \u_dll/u_control/_0495_ ;
 wire \u_dll/u_control/_0496_ ;
 wire \u_dll/u_control/_0497_ ;
 wire \u_dll/u_control/_0498_ ;
 wire \u_dll/u_control/_0499_ ;
 wire \u_dll/u_control/_0500_ ;
 wire \u_dll/u_control/_0501_ ;
 wire \u_dll/u_control/_0502_ ;
 wire \u_dll/u_control/_0503_ ;
 wire \u_dll/u_control/_0504_ ;
 wire \u_dll/u_control/_0505_ ;
 wire \u_dll/u_control/_0506_ ;
 wire \u_dll/u_control/_0507_ ;
 wire \u_dll/u_control/_0508_ ;
 wire \u_dll/u_control/_0509_ ;
 wire \u_dll/u_control/_0510_ ;
 wire \u_dll/u_control/_0511_ ;
 wire \u_dll/u_control/_0512_ ;
 wire \u_dll/u_control/_0513_ ;
 wire \u_dll/u_control/_0514_ ;
 wire \u_dll/u_control/_0515_ ;
 wire \u_dll/u_control/_0516_ ;
 wire \u_dll/u_control/_0517_ ;
 wire \u_dll/u_control/_0518_ ;
 wire \u_dll/u_control/_0519_ ;
 wire \u_dll/u_control/_0520_ ;
 wire \u_dll/u_control/_0521_ ;
 wire \u_dll/u_control/_0522_ ;
 wire \u_dll/u_control/_0523_ ;
 wire \u_dll/u_control/_0524_ ;
 wire \u_dll/u_control/_0525_ ;
 wire \u_dll/u_control/_0526_ ;
 wire \u_dll/u_control/_0527_ ;
 wire \u_dll/u_control/_0528_ ;
 wire \u_dll/u_control/_0529_ ;
 wire \u_dll/u_control/_0530_ ;
 wire \u_dll/u_control/_0531_ ;
 wire \u_dll/u_control/_0532_ ;
 wire \u_dll/u_control/_0533_ ;
 wire \u_dll/u_control/_0534_ ;
 wire \u_dll/u_control/_0535_ ;
 wire \u_dll/u_control/_0536_ ;
 wire \u_dll/u_control/_0537_ ;
 wire \u_dll/u_control/_0538_ ;
 wire \u_dll/u_control/_0539_ ;
 wire \u_dll/u_control/_0540_ ;
 wire \u_dll/u_control/_0541_ ;
 wire \u_dll/u_control/_0542_ ;
 wire \u_dll/u_control/_0543_ ;
 wire \u_dll/u_control/_0544_ ;
 wire \u_dll/u_control/_0545_ ;
 wire \u_dll/u_control/_0546_ ;
 wire \u_dll/u_control/_0547_ ;
 wire \u_dll/u_control/_0548_ ;
 wire \u_dll/u_control/_0549_ ;
 wire \u_dll/u_control/_0550_ ;
 wire \u_dll/u_control/_0551_ ;
 wire \u_dll/u_control/_0552_ ;
 wire \u_dll/u_control/_0553_ ;
 wire \u_dll/u_control/_0554_ ;
 wire \u_dll/u_control/_0555_ ;
 wire \u_dll/u_control/_0556_ ;
 wire \u_dll/u_control/_0557_ ;
 wire \u_dll/u_control/_0558_ ;
 wire \u_dll/u_control/_0559_ ;
 wire \u_dll/u_control/_0560_ ;
 wire \u_dll/u_control/_0561_ ;
 wire \u_dll/u_control/_0562_ ;
 wire \u_dll/u_control/_0563_ ;
 wire \u_dll/u_control/_0564_ ;
 wire \u_dll/u_control/_0565_ ;
 wire \u_dll/u_control/_0566_ ;
 wire \u_dll/u_control/_0567_ ;
 wire \u_dll/u_control/_0568_ ;
 wire \u_dll/u_control/_0569_ ;
 wire \u_dll/u_control/_0570_ ;
 wire \u_dll/u_control/_0571_ ;
 wire \u_dll/u_control/_0572_ ;
 wire \u_dll/u_control/_0573_ ;
 wire \u_dll/u_control/_0574_ ;
 wire \u_dll/u_control/_0575_ ;
 wire \u_dll/u_control/_0576_ ;
 wire \u_dll/u_control/_0577_ ;
 wire \u_dll/u_control/_0578_ ;
 wire \u_dll/u_control/_0579_ ;
 wire \u_dll/u_control/_0580_ ;
 wire \u_dll/u_control/_0581_ ;
 wire \u_dll/u_control/_0582_ ;
 wire \u_dll/u_control/_0583_ ;
 wire \u_dll/u_control/_0584_ ;
 wire \u_dll/u_control/_0585_ ;
 wire \u_dll/u_control/_0586_ ;
 wire \u_dll/u_control/_0587_ ;
 wire \u_dll/u_control/_0588_ ;
 wire \u_dll/u_control/_0589_ ;
 wire \u_dll/u_control/_0590_ ;
 wire \u_dll/u_control/_0591_ ;
 wire \u_dll/u_control/_0592_ ;
 wire \u_dll/u_control/_0593_ ;
 wire \u_dll/u_control/_0594_ ;
 wire \u_dll/u_control/_0595_ ;
 wire \u_dll/u_control/_0596_ ;
 wire \u_dll/u_control/_0597_ ;
 wire \u_dll/u_control/_0598_ ;
 wire \u_dll/u_control/_0599_ ;
 wire \u_dll/u_control/_0600_ ;
 wire \u_dll/u_control/_0601_ ;
 wire \u_dll/u_control/_0602_ ;
 wire \u_dll/u_control/_0603_ ;
 wire \u_dll/u_control/_0604_ ;
 wire \u_dll/u_control/_0605_ ;
 wire \u_dll/u_control/_0606_ ;
 wire \u_dll/u_control/_0607_ ;
 wire \u_dll/u_control/_0608_ ;
 wire \u_dll/u_control/_0609_ ;
 wire \u_dll/u_control/_0610_ ;
 wire \u_dll/u_control/_0611_ ;
 wire \u_dll/u_control/_0612_ ;
 wire \u_dll/u_control/_0613_ ;
 wire \u_dll/u_control/_0614_ ;
 wire \u_dll/u_control/_0615_ ;
 wire \u_dll/u_control/_0616_ ;
 wire \u_dll/u_control/_0617_ ;
 wire \u_dll/u_control/_0618_ ;
 wire \u_dll/u_control/_0619_ ;
 wire \u_dll/u_control/_0620_ ;
 wire \u_dll/u_control/_0621_ ;
 wire \u_dll/u_control/_0622_ ;
 wire \u_dll/u_control/_0623_ ;
 wire \u_dll/u_control/_0624_ ;
 wire \u_dll/u_control/_0625_ ;
 wire \u_dll/u_control/_0626_ ;
 wire \u_dll/u_control/_0627_ ;
 wire \u_dll/u_control/_0628_ ;
 wire \u_dll/u_control/_0629_ ;
 wire \u_dll/u_control/_0630_ ;
 wire \u_dll/u_control/_0631_ ;
 wire \u_dll/u_control/_0632_ ;
 wire \u_dll/u_control/_0633_ ;
 wire \u_dll/u_control/_0634_ ;
 wire \u_dll/u_control/_0635_ ;
 wire \u_dll/u_control/_0636_ ;
 wire \u_dll/u_control/_0637_ ;
 wire \u_dll/u_control/_0638_ ;
 wire \u_dll/u_control/_0639_ ;
 wire \u_dll/u_control/_0640_ ;
 wire \u_dll/u_control/_0641_ ;
 wire \u_dll/u_control/_0642_ ;
 wire \u_dll/u_control/_0643_ ;
 wire \u_dll/u_control/_0644_ ;
 wire \u_dll/u_control/_0645_ ;
 wire \u_dll/u_control/_0646_ ;
 wire \u_dll/u_control/_0647_ ;
 wire \u_dll/u_control/_0648_ ;
 wire \u_dll/u_control/_0649_ ;
 wire \u_dll/u_control/_0650_ ;
 wire \u_dll/u_control/_0651_ ;
 wire \u_dll/u_control/_0652_ ;
 wire \u_dll/u_control/_0653_ ;
 wire \u_dll/u_control/_0654_ ;
 wire \u_dll/u_control/_0655_ ;
 wire \u_dll/u_control/_0656_ ;
 wire \u_dll/u_control/_0657_ ;
 wire \u_dll/u_control/_0658_ ;
 wire \u_dll/u_control/_0659_ ;
 wire \u_dll/u_control/_0660_ ;
 wire \u_dll/u_control/_0661_ ;
 wire \u_dll/u_control/_0662_ ;
 wire \u_dll/u_control/_0663_ ;
 wire \u_dll/u_control/_0664_ ;
 wire \u_dll/u_control/_0665_ ;
 wire \u_dll/u_control/_0666_ ;
 wire \u_dll/u_control/_0667_ ;
 wire \u_dll/u_control/_0668_ ;
 wire \u_dll/u_control/_0669_ ;
 wire \u_dll/u_control/_0670_ ;
 wire \u_dll/u_control/_0671_ ;
 wire \u_dll/u_control/_0672_ ;
 wire \u_dll/u_control/_0673_ ;
 wire \u_dll/u_control/_0674_ ;
 wire \u_dll/u_control/_0675_ ;
 wire \u_dll/u_control/_0676_ ;
 wire \u_dll/u_control/_0677_ ;
 wire \u_dll/u_control/_0678_ ;
 wire \u_dll/u_control/_0679_ ;
 wire \u_dll/u_control/_0680_ ;
 wire \u_dll/u_control/_0681_ ;
 wire \u_dll/u_control/_0682_ ;
 wire \u_dll/u_control/_0683_ ;
 wire \u_dll/u_control/_0684_ ;
 wire \u_dll/u_control/_0685_ ;
 wire \u_dll/u_control/_0686_ ;
 wire \u_dll/u_control/_0687_ ;
 wire \u_dll/u_control/_0688_ ;
 wire \u_dll/u_control/_0689_ ;
 wire \u_dll/u_control/_0690_ ;
 wire \u_dll/u_control/_0691_ ;
 wire \u_dll/u_control/_0692_ ;
 wire \u_dll/u_control/_0693_ ;
 wire \u_dll/u_control/_0694_ ;
 wire \u_dll/u_control/_0695_ ;
 wire \u_dll/u_control/_0696_ ;
 wire \u_dll/u_control/_0697_ ;
 wire \u_dll/u_control/_0698_ ;
 wire \u_dll/u_control/_0699_ ;
 wire \u_dll/u_control/_0700_ ;
 wire \u_dll/u_control/_0701_ ;
 wire \u_dll/u_control/_0702_ ;
 wire \u_dll/u_control/_0703_ ;
 wire \u_dll/u_control/_0704_ ;
 wire \u_dll/u_control/_0705_ ;
 wire \u_dll/u_control/_0706_ ;
 wire \u_dll/u_control/_0707_ ;
 wire \u_dll/u_control/_0708_ ;
 wire \u_dll/u_control/_0709_ ;
 wire \u_dll/u_control/_0710_ ;
 wire \u_dll/u_control/_0711_ ;
 wire \u_dll/u_control/_0712_ ;
 wire \u_dll/u_control/_0713_ ;
 wire \u_dll/u_control/_0714_ ;
 wire \u_dll/u_control/_0715_ ;
 wire \u_dll/u_control/_0716_ ;
 wire \u_dll/u_control/_0717_ ;
 wire \u_dll/u_control/_0718_ ;
 wire \u_dll/u_control/_0719_ ;
 wire \u_dll/u_control/_0720_ ;
 wire \u_dll/u_control/_0721_ ;
 wire \u_dll/u_control/_0722_ ;
 wire \u_dll/u_control/_0723_ ;
 wire \u_dll/u_control/_0724_ ;
 wire \u_dll/u_control/_0725_ ;
 wire \u_dll/u_control/_0726_ ;
 wire \u_dll/u_control/_0727_ ;
 wire \u_dll/u_control/_0728_ ;
 wire \u_dll/u_control/_0729_ ;
 wire \u_dll/u_control/_0730_ ;
 wire \u_dll/u_control/_0731_ ;
 wire \u_dll/u_control/_0732_ ;
 wire \u_dll/u_control/_0733_ ;
 wire \u_dll/u_control/_0734_ ;
 wire \u_dll/u_control/_0735_ ;
 wire \u_dll/u_control/_0736_ ;
 wire \u_dll/u_control/_0737_ ;
 wire \u_dll/u_control/_0738_ ;
 wire \u_dll/u_control/_0739_ ;
 wire \u_dll/u_control/_0740_ ;
 wire \u_dll/u_control/_0741_ ;
 wire \u_dll/u_control/_0742_ ;
 wire \u_dll/u_control/_0743_ ;
 wire \u_dll/u_control/_0744_ ;
 wire \u_dll/u_control/_0745_ ;
 wire \u_dll/u_control/_0746_ ;
 wire \u_dll/u_control/_0747_ ;
 wire \u_dll/u_control/_0748_ ;
 wire \u_dll/u_control/_0749_ ;
 wire \u_dll/u_control/_0750_ ;
 wire \u_dll/u_control/_0751_ ;
 wire \u_dll/u_control/_0752_ ;
 wire \u_dll/u_control/_0753_ ;
 wire \u_dll/u_control/_0754_ ;
 wire \u_dll/u_control/_0755_ ;
 wire \u_dll/u_control/_0756_ ;
 wire \u_dll/u_control/_0757_ ;
 wire \u_dll/u_control/_0758_ ;
 wire \u_dll/u_control/_0759_ ;
 wire \u_dll/u_control/_0760_ ;
 wire \u_dll/u_control/_0761_ ;
 wire \u_dll/u_control/_0762_ ;
 wire \u_dll/u_control/_0763_ ;
 wire \u_dll/u_control/_0764_ ;
 wire \u_dll/u_control/_0765_ ;
 wire \u_dll/u_control/_0766_ ;
 wire \u_dll/u_control/_0767_ ;
 wire \u_dll/u_control/_0768_ ;
 wire \u_dll/u_control/_0769_ ;
 wire \u_dll/u_control/_0770_ ;
 wire \u_dll/u_control/_0771_ ;
 wire \u_dll/u_control/_0772_ ;
 wire \u_dll/u_control/_0773_ ;
 wire \u_dll/u_control/_0774_ ;
 wire \u_dll/u_control/_0775_ ;
 wire \u_dll/u_control/_0776_ ;
 wire \u_dll/u_control/_0777_ ;
 wire \u_dll/u_control/_0778_ ;
 wire \u_dll/u_control/_0779_ ;
 wire \u_dll/u_control/_0780_ ;
 wire \u_dll/u_control/_0781_ ;
 wire \u_dll/u_control/_0782_ ;
 wire \u_dll/u_control/_0783_ ;
 wire \u_dll/u_control/_0784_ ;
 wire \u_dll/u_control/_0785_ ;
 wire \u_dll/u_control/_0786_ ;
 wire \u_dll/u_control/_0787_ ;
 wire \u_dll/u_control/_0788_ ;
 wire \u_dll/u_control/_0789_ ;
 wire \u_dll/u_control/_0790_ ;
 wire \u_dll/u_control/_0791_ ;
 wire \u_dll/u_control/_0792_ ;
 wire \u_dll/u_control/_0793_ ;
 wire \u_dll/u_control/_0794_ ;
 wire \u_dll/u_control/_0795_ ;
 wire \u_dll/u_control/_0796_ ;
 wire \u_dll/u_control/_0797_ ;
 wire \u_dll/u_control/_0798_ ;
 wire \u_dll/u_control/_0799_ ;
 wire \u_dll/u_control/_0800_ ;
 wire \u_dll/u_control/_0801_ ;
 wire \u_dll/u_control/_0802_ ;
 wire \u_dll/u_control/_0803_ ;
 wire \u_dll/u_control/_0804_ ;
 wire \u_dll/u_control/_0805_ ;
 wire \u_dll/u_control/_0806_ ;
 wire \u_dll/u_control/_0807_ ;
 wire \u_dll/u_control/_0808_ ;
 wire \u_dll/u_control/_0809_ ;
 wire \u_dll/u_control/_0810_ ;
 wire \u_dll/u_control/_0811_ ;
 wire \u_dll/u_control/_0812_ ;
 wire \u_dll/u_control/_0813_ ;
 wire \u_dll/u_control/_0814_ ;
 wire \u_dll/u_control/_0815_ ;
 wire \u_dll/u_control/_0816_ ;
 wire \u_dll/u_control/_0817_ ;
 wire \u_dll/u_control/_0818_ ;
 wire \u_dll/u_control/_0819_ ;
 wire \u_dll/u_control/_0820_ ;
 wire \u_dll/u_control/_0821_ ;
 wire \u_dll/u_control/_0822_ ;
 wire \u_dll/u_control/_0823_ ;
 wire \u_dll/u_control/_0824_ ;
 wire \u_dll/u_control/_0825_ ;
 wire \u_dll/u_control/_0826_ ;
 wire \u_dll/u_control/_0827_ ;
 wire \u_dll/u_control/_0828_ ;
 wire \u_dll/u_control/_0829_ ;
 wire \u_dll/u_control/_0830_ ;
 wire \u_dll/u_control/_0831_ ;
 wire \u_dll/u_control/_0832_ ;
 wire \u_dll/u_control/_0833_ ;
 wire \u_dll/u_control/_0834_ ;
 wire \u_dll/u_control/_0835_ ;
 wire \u_dll/u_control/_0836_ ;
 wire \u_dll/u_control/_0837_ ;
 wire \u_dll/u_control/_0838_ ;
 wire \u_dll/u_control/_0839_ ;
 wire \u_dll/u_control/_0840_ ;
 wire \u_dll/u_control/_0841_ ;
 wire \u_dll/u_control/_0842_ ;
 wire \u_dll/u_control/_0843_ ;
 wire \u_dll/u_control/_0844_ ;
 wire \u_dll/u_control/_0845_ ;
 wire \u_dll/u_control/_0846_ ;
 wire \u_dll/u_control/_0847_ ;
 wire \u_dll/u_control/_0848_ ;
 wire \u_dll/u_control/_0849_ ;
 wire \u_dll/u_control/_0850_ ;
 wire \u_dll/u_control/_0851_ ;
 wire \u_dll/u_control/_0852_ ;
 wire \u_dll/u_control/_0853_ ;
 wire \u_dll/u_control/_0854_ ;
 wire \u_dll/u_control/_0855_ ;
 wire \u_dll/u_control/_0856_ ;
 wire \u_dll/u_control/_0857_ ;
 wire \u_dll/u_control/_0858_ ;
 wire \u_dll/u_control/_0859_ ;
 wire \u_dll/u_control/_0860_ ;
 wire \u_dll/u_control/_0861_ ;
 wire \u_dll/u_control/_0862_ ;
 wire \u_dll/u_control/_0863_ ;
 wire \u_dll/u_control/_0864_ ;
 wire \u_dll/u_control/_0865_ ;
 wire \u_dll/u_control/_0866_ ;
 wire \u_dll/u_control/_0867_ ;
 wire \u_dll/u_control/_0868_ ;
 wire \u_dll/u_control/_0869_ ;
 wire \u_dll/u_control/_0870_ ;
 wire \u_dll/u_control/_0871_ ;
 wire \u_dll/u_control/_0872_ ;
 wire \u_dll/u_control/_0873_ ;
 wire \u_dll/u_control/_0874_ ;
 wire \u_dll/u_control/_0875_ ;
 wire \u_dll/u_control/_0876_ ;
 wire \u_dll/u_control/_0877_ ;
 wire \u_dll/u_control/_0878_ ;
 wire \u_dll/u_control/_0879_ ;
 wire \u_dll/u_control/_0880_ ;
 wire \u_dll/u_control/_0881_ ;
 wire \u_dll/u_control/_0882_ ;
 wire \u_dll/u_control/_0883_ ;
 wire \u_dll/u_control/_0884_ ;
 wire \u_dll/u_control/_0885_ ;
 wire \u_dll/u_control/_0886_ ;
 wire \u_dll/u_control/_0887_ ;
 wire \u_dll/u_control/_0888_ ;
 wire \u_dll/u_control/_0889_ ;
 wire \u_dll/u_control/_0890_ ;
 wire \u_dll/u_control/_0891_ ;
 wire \u_dll/u_control/_0892_ ;
 wire \u_dll/u_control/_0893_ ;
 wire \u_dll/u_control/_0894_ ;
 wire \u_dll/u_control/_0895_ ;
 wire \u_dll/u_control/_0896_ ;
 wire \u_dll/u_control/_0897_ ;
 wire \u_dll/u_control/_0898_ ;
 wire \u_dll/u_control/_0899_ ;
 wire \u_dll/u_control/_0900_ ;
 wire \u_dll/u_control/_0901_ ;
 wire \u_dll/u_control/_0902_ ;
 wire \u_dll/u_control/_0903_ ;
 wire \u_dll/u_control/_0904_ ;
 wire \u_dll/u_control/_0905_ ;
 wire \u_dll/u_control/_0906_ ;
 wire \u_dll/u_control/_0907_ ;
 wire \u_dll/u_control/_0908_ ;
 wire \u_dll/u_control/_0909_ ;
 wire \u_dll/u_control/_0910_ ;
 wire \u_dll/u_control/_0911_ ;
 wire \u_dll/u_control/_0912_ ;
 wire \u_dll/u_control/_0913_ ;
 wire \u_dll/u_control/_0914_ ;
 wire \u_dll/u_control/_0915_ ;
 wire \u_dll/u_control/_0916_ ;
 wire \u_dll/u_control/_0917_ ;
 wire \u_dll/u_control/_0918_ ;
 wire \u_dll/u_control/_0919_ ;
 wire \u_dll/u_control/_0920_ ;
 wire \u_dll/u_control/_0921_ ;
 wire \u_dll/u_control/_0922_ ;
 wire \u_dll/u_control/_0923_ ;
 wire \u_dll/u_control/_0924_ ;
 wire \u_dll/u_control/_0925_ ;
 wire \u_dll/u_control/_0926_ ;
 wire \u_dll/u_control/_0927_ ;
 wire \u_dll/u_control/_0928_ ;
 wire \u_dll/u_control/_0929_ ;
 wire \u_dll/u_control/_0930_ ;
 wire \u_dll/u_control/_0931_ ;
 wire \u_dll/u_control/_0932_ ;
 wire \u_dll/u_control/_0933_ ;
 wire \u_dll/u_control/_0934_ ;
 wire \u_dll/u_control/_0935_ ;
 wire \u_dll/u_control/_0936_ ;
 wire \u_dll/u_control/_0937_ ;
 wire \u_dll/u_control/_0938_ ;
 wire \u_dll/u_control/_0939_ ;
 wire \u_dll/u_control/_0940_ ;
 wire \u_dll/u_control/_0941_ ;
 wire \u_dll/u_control/_0942_ ;
 wire \u_dll/u_control/_0943_ ;
 wire \u_dll/u_control/_0944_ ;
 wire \u_dll/u_control/_0945_ ;
 wire \u_dll/u_control/_0946_ ;
 wire \u_dll/u_control/_0947_ ;
 wire \u_dll/u_control/_0948_ ;
 wire \u_dll/u_control/_0949_ ;
 wire \u_dll/u_control/_0950_ ;
 wire \u_dll/u_control/_0951_ ;
 wire \u_dll/u_control/_0952_ ;
 wire \u_dll/u_control/_0953_ ;
 wire \u_dll/u_control/_0954_ ;
 wire \u_dll/u_control/_0955_ ;
 wire \u_dll/u_control/_0956_ ;
 wire \u_dll/u_control/_0957_ ;
 wire \u_dll/u_control/_0958_ ;
 wire \u_dll/u_control/_0959_ ;
 wire \u_dll/u_control/_0960_ ;
 wire \u_dll/u_control/_0961_ ;
 wire \u_dll/u_control/_0962_ ;
 wire \u_dll/u_control/_0963_ ;
 wire \u_dll/u_control/_0964_ ;
 wire \u_dll/u_control/_0965_ ;
 wire \u_dll/u_control/_0966_ ;
 wire \u_dll/u_control/_0967_ ;
 wire \u_dll/u_control/_0968_ ;
 wire \u_dll/u_control/_0969_ ;
 wire \u_dll/u_control/_0970_ ;
 wire \u_dll/u_control/_0971_ ;
 wire \u_dll/u_control/_0972_ ;
 wire \u_dll/u_control/_0973_ ;
 wire \u_dll/u_control/_0974_ ;
 wire \u_dll/u_control/_0975_ ;
 wire \u_dll/u_control/_0976_ ;
 wire \u_dll/u_control/_0977_ ;
 wire \u_dll/u_control/_0978_ ;
 wire \u_dll/u_control/_0979_ ;
 wire \u_dll/u_control/_0980_ ;
 wire \u_dll/u_control/_0981_ ;
 wire \u_dll/u_control/_0982_ ;
 wire \u_dll/u_control/_0983_ ;
 wire \u_dll/u_control/_0984_ ;
 wire \u_dll/u_control/_0985_ ;
 wire \u_dll/u_control/_0986_ ;
 wire \u_dll/u_control/_0987_ ;
 wire \u_dll/u_control/_0988_ ;
 wire \u_dll/u_control/_0989_ ;
 wire \u_dll/u_control/_0990_ ;
 wire \u_dll/u_control/_0991_ ;
 wire \u_dll/u_control/_0992_ ;
 wire \u_dll/u_control/_0993_ ;
 wire \u_dll/u_control/_0994_ ;
 wire \u_dll/u_control/_0995_ ;
 wire \u_dll/u_control/_0996_ ;
 wire \u_dll/u_control/_0997_ ;
 wire \u_dll/u_control/_0998_ ;
 wire \u_dll/u_control/_0999_ ;
 wire \u_dll/u_control/_1000_ ;
 wire \u_dll/u_control/_1001_ ;
 wire \u_dll/u_control/_1002_ ;
 wire \u_dll/u_control/_1003_ ;
 wire \u_dll/u_control/_1004_ ;
 wire \u_dll/u_control/_1005_ ;
 wire \u_dll/u_control/_1006_ ;
 wire \u_dll/u_control/_1007_ ;
 wire \u_dll/u_control/_1008_ ;
 wire \u_dll/u_control/_1009_ ;
 wire \u_dll/u_control/_1010_ ;
 wire \u_dll/u_control/_1011_ ;
 wire \u_dll/u_control/_1012_ ;
 wire \u_dll/u_control/_1013_ ;
 wire \u_dll/u_control/_1014_ ;
 wire \u_dll/u_control/_1015_ ;
 wire \u_dll/u_control/_1016_ ;
 wire \u_dll/u_control/_1017_ ;
 wire \u_dll/u_control/_1018_ ;
 wire \u_dll/u_control/_1019_ ;
 wire \u_dll/u_control/_1020_ ;
 wire \u_dll/u_control/_1021_ ;
 wire \u_dll/u_control/_1022_ ;
 wire \u_dll/u_control/_1023_ ;
 wire \u_dll/u_control/_1024_ ;
 wire \u_dll/u_control/_1025_ ;
 wire \u_dll/u_control/_1026_ ;
 wire \u_dll/u_control/_1027_ ;
 wire \u_dll/u_control/_1028_ ;
 wire \u_dll/u_control/_1029_ ;
 wire \u_dll/u_control/_1030_ ;
 wire \u_dll/u_control/_1031_ ;
 wire \u_dll/u_control/_1032_ ;
 wire \u_dll/u_control/_1033_ ;
 wire \u_dll/u_control/_1034_ ;
 wire \u_dll/u_control/_1035_ ;
 wire \u_dll/u_control/_1036_ ;
 wire \u_dll/u_control/_1037_ ;
 wire \u_dll/u_control/_1038_ ;
 wire \u_dll/u_control/_1039_ ;
 wire \u_dll/u_control/_1040_ ;
 wire \u_dll/u_control/_1041_ ;
 wire \u_dll/u_control/_1042_ ;
 wire \u_dll/u_control/_1043_ ;
 wire \u_dll/u_control/_1044_ ;
 wire \u_dll/u_control/_1045_ ;
 wire \u_dll/u_control/_1046_ ;
 wire \u_dll/u_control/_1047_ ;
 wire \u_dll/u_control/_1048_ ;
 wire \u_dll/u_control/_1049_ ;
 wire \u_dll/u_control/_1050_ ;
 wire \u_dll/u_control/_1051_ ;
 wire \u_dll/u_control/_1052_ ;
 wire \u_dll/u_control/_1053_ ;
 wire \u_dll/u_control/_1054_ ;
 wire \u_dll/u_control/_1055_ ;
 wire \u_dll/u_control/_1056_ ;
 wire \u_dll/u_control/_1057_ ;
 wire \u_dll/u_control/_1058_ ;
 wire \u_dll/u_control/_1059_ ;
 wire \u_dll/u_control/_1060_ ;
 wire \u_dll/u_control/_1061_ ;
 wire \u_dll/u_control/_1062_ ;
 wire \u_dll/u_control/_1063_ ;
 wire \u_dll/u_control/_1064_ ;
 wire \u_dll/u_control/_1065_ ;
 wire \u_dll/u_control/_1066_ ;
 wire \u_dll/u_control/count_full ;
 wire \u_dll/u_control/cycles[0] ;
 wire \u_dll/u_control/cycles[10] ;
 wire \u_dll/u_control/cycles[11] ;
 wire \u_dll/u_control/cycles[12] ;
 wire \u_dll/u_control/cycles[1] ;
 wire \u_dll/u_control/cycles[2] ;
 wire \u_dll/u_control/cycles[3] ;
 wire \u_dll/u_control/cycles[4] ;
 wire \u_dll/u_control/cycles[5] ;
 wire \u_dll/u_control/cycles[6] ;
 wire \u_dll/u_control/cycles[7] ;
 wire \u_dll/u_control/cycles[8] ;
 wire \u_dll/u_control/cycles[9] ;
 wire \u_dll/u_control/density[0] ;
 wire \u_dll/u_control/density[1] ;
 wire \u_dll/u_control/density[2] ;
 wire \u_dll/u_control/density[3] ;
 wire \u_dll/u_control/density[4] ;
 wire \u_dll/u_control/density[5] ;
 wire \u_dll/u_control/density[6] ;
 wire \u_dll/u_control/density[7] ;
 wire \u_dll/u_control/error_magnitude[0] ;
 wire \u_dll/u_control/error_negative ;
 wire \u_dll/u_control/error_value[10] ;
 wire \u_dll/u_control/error_value[11] ;
 wire \u_dll/u_control/error_value[12] ;
 wire \u_dll/u_control/error_value[1] ;
 wire \u_dll/u_control/error_value[2] ;
 wire \u_dll/u_control/error_value[3] ;
 wire \u_dll/u_control/error_value[4] ;
 wire \u_dll/u_control/error_value[5] ;
 wire \u_dll/u_control/error_value[6] ;
 wire \u_dll/u_control/error_value[7] ;
 wire \u_dll/u_control/error_value[8] ;
 wire \u_dll/u_control/error_value[9] ;
 wire \u_dll/u_control/good_windows[0] ;
 wire \u_dll/u_control/good_windows[1] ;
 wire \u_dll/u_control/good_windows[2] ;
 wire \u_dll/u_control/heartbeat[0] ;
 wire \u_dll/u_control/heartbeat[1] ;
 wire \u_dll/u_control/heartbeat[2] ;
 wire \u_dll/u_control/heartbeat[3] ;
 wire \u_dll/u_control/heartbeat_meta[0] ;
 wire \u_dll/u_control/heartbeat_meta[1] ;
 wire \u_dll/u_control/heartbeat_meta[2] ;
 wire \u_dll/u_control/heartbeat_meta[3] ;
 wire \u_dll/u_control/heartbeat_previous[0] ;
 wire \u_dll/u_control/heartbeat_previous[1] ;
 wire \u_dll/u_control/heartbeat_previous[2] ;
 wire \u_dll/u_control/heartbeat_previous[3] ;
 wire \u_dll/u_control/heartbeat_sync[0] ;
 wire \u_dll/u_control/heartbeat_sync[1] ;
 wire \u_dll/u_control/heartbeat_sync[2] ;
 wire \u_dll/u_control/heartbeat_sync[3] ;
 wire \u_dll/u_control/last_code[3] ;
 wire \u_dll/u_control/last_code[4] ;
 wire \u_dll/u_control/last_code[6] ;
 wire \u_dll/u_control/locked_qualified ;
 wire \u_dll/u_control/low_carry ;
 wire \u_dll/u_control/missing_meta ;
 wire \u_dll/u_control/missing_sync ;
 wire \u_dll/u_control/multiply_cfg[0] ;
 wire \u_dll/u_control/multiply_cfg[1] ;
 wire \u_dll/u_control/multiply_cfg[2] ;
 wire \u_dll/u_control/multiply_cfg[3] ;
 wire \u_dll/u_control/multiply_cfg[4] ;
 wire \u_dll/u_control/multiply_previous[0] ;
 wire \u_dll/u_control/multiply_previous[1] ;
 wire \u_dll/u_control/multiply_previous[2] ;
 wire \u_dll/u_control/multiply_previous[3] ;
 wire \u_dll/u_control/multiply_previous[4] ;
 wire \u_dll/u_control/out_of_range ;
 wire \u_dll/u_control/qualified_meta ;
 wire \u_dll/u_control/qualified_sync ;
 wire \u_dll/u_control/ref_count[0] ;
 wire \u_dll/u_control/ref_count[1] ;
 wire \u_dll/u_control/ref_count[2] ;
 wire \u_dll/u_control/ref_reset_pipe[0] ;
 wire \u_dll/u_control/ref_reset_pipe[1] ;
 wire \u_dll/u_control/reference_missing ;
 wire \u_dll/u_control/ring_alive ;
 wire \u_dll/u_control/ring_count[0] ;
 wire \u_dll/u_control/ring_count[10] ;
 wire \u_dll/u_control/ring_count[11] ;
 wire \u_dll/u_control/ring_count[12] ;
 wire \u_dll/u_control/ring_count[1] ;
 wire \u_dll/u_control/ring_count[2] ;
 wire \u_dll/u_control/ring_count[3] ;
 wire \u_dll/u_control/ring_count[4] ;
 wire \u_dll/u_control/ring_count[5] ;
 wire \u_dll/u_control/ring_count[6] ;
 wire \u_dll/u_control/ring_count[7] ;
 wire \u_dll/u_control/ring_count[8] ;
 wire \u_dll/u_control/ring_count[9] ;
 wire \u_dll/u_control/ring_reset_pipe[0] ;
 wire \u_dll/u_control/ring_reset_pipe[1] ;
 wire \u_dll/u_control/sample_meta ;
 wire \u_dll/u_control/sample_previous ;
 wire \u_dll/u_control/sample_sync ;
 wire \u_dll/u_control/sample_toggle ;
 wire \u_dll/u_control/sampled_count[0] ;
 wire \u_dll/u_control/sampled_count[10] ;
 wire \u_dll/u_control/sampled_count[11] ;
 wire \u_dll/u_control/sampled_count[12] ;
 wire \u_dll/u_control/sampled_count[1] ;
 wire \u_dll/u_control/sampled_count[2] ;
 wire \u_dll/u_control/sampled_count[3] ;
 wire \u_dll/u_control/sampled_count[4] ;
 wire \u_dll/u_control/sampled_count[5] ;
 wire \u_dll/u_control/sampled_count[6] ;
 wire \u_dll/u_control/sampled_count[7] ;
 wire \u_dll/u_control/sampled_count[8] ;
 wire \u_dll/u_control/sampled_count[9] ;
 wire \u_dll/u_control/saturated_windows[0] ;
 wire \u_dll/u_control/saturated_windows[1] ;
 wire \u_dll/u_control/step_value[0] ;
 wire \u_dll/u_control/step_value[1] ;
 wire \u_dll/u_control/step_value[2] ;
 wire \u_dll/u_control/step_value[3] ;
 wire \u_dll/u_control/step_value[4] ;
 wire \u_dll/u_control/step_value[5] ;
 wire \u_dll/u_control/step_value[6] ;
 wire \u_dll/u_control/step_value[7] ;
 wire net124;
 wire net122;
 wire \u_dll/u_control/update_pending[0] ;
 wire \u_dll/u_control/update_pending[1] ;
 wire \u_dll/u_control/update_pending[2] ;
 wire \u_dll/u_control/watchdog[0] ;
 wire \u_dll/u_control/watchdog[10] ;
 wire \u_dll/u_control/watchdog[11] ;
 wire \u_dll/u_control/watchdog[1] ;
 wire \u_dll/u_control/watchdog[2] ;
 wire \u_dll/u_control/watchdog[3] ;
 wire \u_dll/u_control/watchdog[4] ;
 wire \u_dll/u_control/watchdog[5] ;
 wire \u_dll/u_control/watchdog[6] ;
 wire \u_dll/u_control/watchdog[7] ;
 wire \u_dll/u_control/watchdog[8] ;
 wire \u_dll/u_control/watchdog[9] ;
 wire \u_dll/u_control/watchdog_carry ;
 wire \u_dll/u_control/watchdog_full ;
 wire \u_dll/u_control/window_count[0] ;
 wire \u_dll/u_control/window_count[1] ;
 wire \u_dll/u_control/window_count[2] ;
 wire \u_dll/u_control/window_count[3] ;
 wire \u_dll/u_control/window_count[4] ;
 wire \u_dll/u_control/window_count[5] ;
 wire \u_dll/u_control/window_count[6] ;
 wire \u_dll/u_control/window_meta ;
 wire \u_dll/u_control/window_pending ;
 wire \u_dll/u_control/window_sync ;
 wire \u_dll/u_control/window_toggle ;
 wire \u_dll/u_div0/_000_ ;
 wire \u_dll/u_div0/_001_ ;
 wire \u_dll/u_div0/_002_ ;
 wire \u_dll/u_div0/_003_ ;
 wire \u_dll/u_div0/_004_ ;
 wire \u_dll/u_div0/_005_ ;
 wire \u_dll/u_div0/_006_ ;
 wire \u_dll/u_div0/_007_ ;
 wire \u_dll/u_div0/_008_ ;
 wire \u_dll/u_div0/_009_ ;
 wire \u_dll/u_div0/_010_ ;
 wire \u_dll/u_div0/_011_ ;
 wire \u_dll/u_div0/_012_ ;
 wire \u_dll/u_div0/_013_ ;
 wire \u_dll/u_div0/_014_ ;
 wire \u_dll/u_div0/_015_ ;
 wire \u_dll/u_div0/_016_ ;
 wire \u_dll/u_div0/_017_ ;
 wire \u_dll/u_div0/_018_ ;
 wire \u_dll/u_div0/_019_ ;
 wire \u_dll/u_div0/_020_ ;
 wire \u_dll/u_div0/_021_ ;
 wire \u_dll/u_div0/_022_ ;
 wire \u_dll/u_div0/_023_ ;
 wire \u_dll/u_div0/_024_ ;
 wire \u_dll/u_div0/_025_ ;
 wire \u_dll/u_div0/_026_ ;
 wire \u_dll/u_div0/_027_ ;
 wire \u_dll/u_div0/_028_ ;
 wire \u_dll/u_div0/_029_ ;
 wire \u_dll/u_div0/_030_ ;
 wire \u_dll/u_div0/_031_ ;
 wire \u_dll/u_div0/_032_ ;
 wire \u_dll/u_div0/_033_ ;
 wire \u_dll/u_div0/_034_ ;
 wire \u_dll/u_div0/_035_ ;
 wire \u_dll/u_div0/_036_ ;
 wire \u_dll/u_div0/_037_ ;
 wire \u_dll/u_div0/_038_ ;
 wire \u_dll/u_div0/_039_ ;
 wire \u_dll/u_div0/_040_ ;
 wire \u_dll/u_div0/_041_ ;
 wire \u_dll/u_div0/_042_ ;
 wire \u_dll/u_div0/_043_ ;
 wire \u_dll/u_div0/_044_ ;
 wire \u_dll/u_div0/_045_ ;
 wire \u_dll/u_div0/_046_ ;
 wire \u_dll/u_div0/_047_ ;
 wire \u_dll/u_div0/_048_ ;
 wire \u_dll/u_div0/bypass ;
 wire \u_dll/u_div0/clk_config ;
 wire \u_dll/u_div0/clk_count ;
 wire \u_dll/u_div0/clk_sample ;
 wire \u_dll/u_div0/count[0] ;
 wire \u_dll/u_div0/count[1] ;
 wire \u_dll/u_div0/count[2] ;
 wire \u_dll/u_div0/count[3] ;
 wire \u_dll/u_div0/count[4] ;
 wire \u_dll/u_div0/divided_high ;
 wire \u_dll/u_div0/enabled_high ;
 wire \u_dll/u_div0/high_neg ;
 wire \u_dll/u_div0/high_pos ;
 wire \u_dll/u_div0/odd_high ;
 wire \u_dll/u_div0/output_n ;
 wire \u_dll/u_div0/output_p ;
 wire \u_dll/u_div0/running ;
 wire \u_dll/u_div0/selected ;
 wire \u_dll/u_div0/syncN[0] ;
 wire \u_dll/u_div0/syncN[1] ;
 wire \u_dll/u_div0/syncN[2] ;
 wire \u_dll/u_div0/syncN[3] ;
 wire \u_dll/u_div0/syncN[4] ;
 wire \u_dll/u_div0/syncNp[0] ;
 wire \u_dll/u_div0/syncNp[2] ;
 wire \u_dll/u_div0/syncNp[3] ;
 wire \u_dll/u_div0/syncNp[4] ;
 wire \u_dll/u_div0/valid ;
 wire \u_dll/u_div0/u_bypass_mux/n0 ;
 wire \u_dll/u_div0/u_bypass_mux/n1 ;
 wire \u_dll/u_div0/u_bypass_mux/sn ;
 wire \u_dll/u_div0/u_parity_mux/n0 ;
 wire \u_dll/u_div0/u_parity_mux/n1 ;
 wire \u_dll/u_div0/u_parity_mux/sn ;
 wire \u_dll/u_div1/_000_ ;
 wire \u_dll/u_div1/_001_ ;
 wire \u_dll/u_div1/_002_ ;
 wire \u_dll/u_div1/_003_ ;
 wire \u_dll/u_div1/_004_ ;
 wire \u_dll/u_div1/_005_ ;
 wire \u_dll/u_div1/_006_ ;
 wire \u_dll/u_div1/_007_ ;
 wire \u_dll/u_div1/_008_ ;
 wire \u_dll/u_div1/_009_ ;
 wire \u_dll/u_div1/_010_ ;
 wire \u_dll/u_div1/_011_ ;
 wire \u_dll/u_div1/_012_ ;
 wire \u_dll/u_div1/_013_ ;
 wire \u_dll/u_div1/_014_ ;
 wire \u_dll/u_div1/_015_ ;
 wire \u_dll/u_div1/_016_ ;
 wire \u_dll/u_div1/_017_ ;
 wire \u_dll/u_div1/_018_ ;
 wire \u_dll/u_div1/_019_ ;
 wire \u_dll/u_div1/_020_ ;
 wire \u_dll/u_div1/_021_ ;
 wire \u_dll/u_div1/_022_ ;
 wire \u_dll/u_div1/_023_ ;
 wire \u_dll/u_div1/_024_ ;
 wire \u_dll/u_div1/_025_ ;
 wire \u_dll/u_div1/_026_ ;
 wire \u_dll/u_div1/_027_ ;
 wire \u_dll/u_div1/_028_ ;
 wire \u_dll/u_div1/_029_ ;
 wire \u_dll/u_div1/_030_ ;
 wire \u_dll/u_div1/_031_ ;
 wire \u_dll/u_div1/_032_ ;
 wire \u_dll/u_div1/_033_ ;
 wire \u_dll/u_div1/_034_ ;
 wire \u_dll/u_div1/_035_ ;
 wire \u_dll/u_div1/_036_ ;
 wire \u_dll/u_div1/_037_ ;
 wire \u_dll/u_div1/_038_ ;
 wire \u_dll/u_div1/_039_ ;
 wire \u_dll/u_div1/_040_ ;
 wire \u_dll/u_div1/_041_ ;
 wire \u_dll/u_div1/_042_ ;
 wire \u_dll/u_div1/_043_ ;
 wire \u_dll/u_div1/_044_ ;
 wire \u_dll/u_div1/_045_ ;
 wire \u_dll/u_div1/_046_ ;
 wire \u_dll/u_div1/_047_ ;
 wire \u_dll/u_div1/_048_ ;
 wire \u_dll/u_div1/bypass ;
 wire \u_dll/u_div1/clk_config ;
 wire \u_dll/u_div1/clk_count ;
 wire \u_dll/u_div1/clk_sample ;
 wire \u_dll/u_div1/count[0] ;
 wire \u_dll/u_div1/count[1] ;
 wire \u_dll/u_div1/count[2] ;
 wire \u_dll/u_div1/count[3] ;
 wire \u_dll/u_div1/count[4] ;
 wire \u_dll/u_div1/divided_high ;
 wire \u_dll/u_div1/enabled_high ;
 wire \u_dll/u_div1/high_neg ;
 wire \u_dll/u_div1/high_pos ;
 wire \u_dll/u_div1/odd_high ;
 wire \u_dll/u_div1/output_n ;
 wire \u_dll/u_div1/output_p ;
 wire \u_dll/u_div1/running ;
 wire \u_dll/u_div1/selected ;
 wire \u_dll/u_div1/syncN[0] ;
 wire \u_dll/u_div1/syncN[1] ;
 wire \u_dll/u_div1/syncN[2] ;
 wire \u_dll/u_div1/syncN[3] ;
 wire \u_dll/u_div1/syncN[4] ;
 wire \u_dll/u_div1/syncNp[0] ;
 wire \u_dll/u_div1/syncNp[2] ;
 wire \u_dll/u_div1/syncNp[3] ;
 wire \u_dll/u_div1/syncNp[4] ;
 wire \u_dll/u_div1/valid ;
 wire \u_dll/u_div1/u_bypass_mux/n0 ;
 wire \u_dll/u_div1/u_bypass_mux/n1 ;
 wire \u_dll/u_div1/u_bypass_mux/sn ;
 wire \u_dll/u_div1/u_parity_mux/n0 ;
 wire \u_dll/u_div1/u_parity_mux/n1 ;
 wire \u_dll/u_div1/u_parity_mux/sn ;
 wire \u_dll/u_ring/d[0] ;
 wire \u_dll/u_ring/d[10] ;
 wire \u_dll/u_ring/d[11] ;
 wire \u_dll/u_ring/d[12] ;
 wire \u_dll/u_ring/d[1] ;
 wire \u_dll/u_ring/d[2] ;
 wire \u_dll/u_ring/d[3] ;
 wire \u_dll/u_ring/d[4] ;
 wire \u_dll/u_ring/d[5] ;
 wire \u_dll/u_ring/d[6] ;
 wire \u_dll/u_ring/d[7] ;
 wire \u_dll/u_ring/d[8] ;
 wire \u_dll/u_ring/d[9] ;
 wire \u_dll/u_ring/output_n ;
 wire \u_dll/u_ring/output_p ;
 wire \u_dll/u_ring/t[0] ;
 wire \u_dll/u_ring/t[10] ;
 wire \u_dll/u_ring/t[11] ;
 wire \u_dll/u_ring/t[12] ;
 wire \u_dll/u_ring/t[1] ;
 wire \u_dll/u_ring/t[2] ;
 wire \u_dll/u_ring/t[3] ;
 wire \u_dll/u_ring/t[4] ;
 wire \u_dll/u_ring/t[5] ;
 wire \u_dll/u_ring/t[6] ;
 wire \u_dll/u_ring/t[7] ;
 wire \u_dll/u_ring/t[8] ;
 wire \u_dll/u_ring/t[9] ;
 wire \u_dll/u_ring/trim_reset_branch[0] ;
 wire \u_dll/u_ring/trim_reset_branch[1] ;
 wire \u_dll/u_ring/trim_reset_branch[2] ;
 wire \u_dll/u_ring/trim_reset_branch[3] ;
 wire \u_dll/u_ring/dstage[0].id/zero ;
 wire \u_dll/u_ring/dstage[0].id/const0/HI ;
 wire \u_dll/u_ring/dstage[0].id/core/d0 ;
 wire \u_dll/u_ring/dstage[0].id/core/d1 ;
 wire \u_dll/u_ring/dstage[0].id/core/d2 ;
 wire \u_dll/u_ring/dstage[0].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[0].id/core/long_n ;
 wire \u_dll/u_ring/dstage[0].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[0].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[0].id/core/selected ;
 wire \u_dll/u_ring/dstage[0].id/core/short_n ;
 wire \u_dll/u_ring/dstage[0].id/core/short_select ;
 wire \u_dll/u_ring/dstage[0].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[0].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[0].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[0].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[0].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[0].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[0].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[0].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[0].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[10].id/zero ;
 wire \u_dll/u_ring/dstage[10].id/const0/HI ;
 wire \u_dll/u_ring/dstage[10].id/core/d0 ;
 wire \u_dll/u_ring/dstage[10].id/core/d1 ;
 wire \u_dll/u_ring/dstage[10].id/core/d2 ;
 wire \u_dll/u_ring/dstage[10].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[10].id/core/long_n ;
 wire \u_dll/u_ring/dstage[10].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[10].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[10].id/core/selected ;
 wire \u_dll/u_ring/dstage[10].id/core/short_n ;
 wire \u_dll/u_ring/dstage[10].id/core/short_select ;
 wire \u_dll/u_ring/dstage[10].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[10].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[10].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[10].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[10].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[10].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[10].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[10].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[10].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[11].id/zero ;
 wire \u_dll/u_ring/dstage[11].id/const0/HI ;
 wire \u_dll/u_ring/dstage[11].id/core/d0 ;
 wire \u_dll/u_ring/dstage[11].id/core/d1 ;
 wire \u_dll/u_ring/dstage[11].id/core/d2 ;
 wire \u_dll/u_ring/dstage[11].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[11].id/core/long_n ;
 wire \u_dll/u_ring/dstage[11].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[11].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[11].id/core/selected ;
 wire \u_dll/u_ring/dstage[11].id/core/short_n ;
 wire \u_dll/u_ring/dstage[11].id/core/short_select ;
 wire \u_dll/u_ring/dstage[11].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[11].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[11].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[11].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[11].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[11].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[11].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[11].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[11].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[1].id/zero ;
 wire \u_dll/u_ring/dstage[1].id/const0/HI ;
 wire \u_dll/u_ring/dstage[1].id/core/d0 ;
 wire \u_dll/u_ring/dstage[1].id/core/d1 ;
 wire \u_dll/u_ring/dstage[1].id/core/d2 ;
 wire \u_dll/u_ring/dstage[1].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[1].id/core/long_n ;
 wire \u_dll/u_ring/dstage[1].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[1].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[1].id/core/selected ;
 wire \u_dll/u_ring/dstage[1].id/core/short_n ;
 wire \u_dll/u_ring/dstage[1].id/core/short_select ;
 wire \u_dll/u_ring/dstage[1].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[1].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[1].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[1].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[1].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[1].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[1].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[1].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[1].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[2].id/zero ;
 wire \u_dll/u_ring/dstage[2].id/const0/HI ;
 wire \u_dll/u_ring/dstage[2].id/core/d0 ;
 wire \u_dll/u_ring/dstage[2].id/core/d1 ;
 wire \u_dll/u_ring/dstage[2].id/core/d2 ;
 wire \u_dll/u_ring/dstage[2].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[2].id/core/long_n ;
 wire \u_dll/u_ring/dstage[2].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[2].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[2].id/core/selected ;
 wire \u_dll/u_ring/dstage[2].id/core/short_n ;
 wire \u_dll/u_ring/dstage[2].id/core/short_select ;
 wire \u_dll/u_ring/dstage[2].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[2].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[2].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[2].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[2].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[2].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[2].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[2].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[2].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[3].id/zero ;
 wire \u_dll/u_ring/dstage[3].id/const0/HI ;
 wire \u_dll/u_ring/dstage[3].id/core/d0 ;
 wire \u_dll/u_ring/dstage[3].id/core/d1 ;
 wire \u_dll/u_ring/dstage[3].id/core/d2 ;
 wire \u_dll/u_ring/dstage[3].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[3].id/core/long_n ;
 wire \u_dll/u_ring/dstage[3].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[3].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[3].id/core/selected ;
 wire \u_dll/u_ring/dstage[3].id/core/short_n ;
 wire \u_dll/u_ring/dstage[3].id/core/short_select ;
 wire \u_dll/u_ring/dstage[3].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[3].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[3].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[3].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[3].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[3].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[3].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[3].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[3].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[4].id/zero ;
 wire \u_dll/u_ring/dstage[4].id/const0/HI ;
 wire \u_dll/u_ring/dstage[4].id/core/d0 ;
 wire \u_dll/u_ring/dstage[4].id/core/d1 ;
 wire \u_dll/u_ring/dstage[4].id/core/d2 ;
 wire \u_dll/u_ring/dstage[4].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[4].id/core/long_n ;
 wire \u_dll/u_ring/dstage[4].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[4].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[4].id/core/selected ;
 wire \u_dll/u_ring/dstage[4].id/core/short_n ;
 wire \u_dll/u_ring/dstage[4].id/core/short_select ;
 wire \u_dll/u_ring/dstage[4].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[4].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[4].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[4].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[4].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[4].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[4].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[4].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[4].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[5].id/zero ;
 wire \u_dll/u_ring/dstage[5].id/const0/HI ;
 wire \u_dll/u_ring/dstage[5].id/core/d0 ;
 wire \u_dll/u_ring/dstage[5].id/core/d1 ;
 wire \u_dll/u_ring/dstage[5].id/core/d2 ;
 wire \u_dll/u_ring/dstage[5].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[5].id/core/long_n ;
 wire \u_dll/u_ring/dstage[5].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[5].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[5].id/core/selected ;
 wire \u_dll/u_ring/dstage[5].id/core/short_n ;
 wire \u_dll/u_ring/dstage[5].id/core/short_select ;
 wire \u_dll/u_ring/dstage[5].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[5].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[5].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[5].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[5].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[5].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[5].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[5].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[5].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[6].id/zero ;
 wire \u_dll/u_ring/dstage[6].id/const0/HI ;
 wire \u_dll/u_ring/dstage[6].id/core/d0 ;
 wire \u_dll/u_ring/dstage[6].id/core/d1 ;
 wire \u_dll/u_ring/dstage[6].id/core/d2 ;
 wire \u_dll/u_ring/dstage[6].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[6].id/core/long_n ;
 wire \u_dll/u_ring/dstage[6].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[6].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[6].id/core/selected ;
 wire \u_dll/u_ring/dstage[6].id/core/short_n ;
 wire \u_dll/u_ring/dstage[6].id/core/short_select ;
 wire \u_dll/u_ring/dstage[6].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[6].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[6].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[6].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[6].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[6].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[6].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[6].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[6].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[7].id/zero ;
 wire \u_dll/u_ring/dstage[7].id/const0/HI ;
 wire \u_dll/u_ring/dstage[7].id/core/d0 ;
 wire \u_dll/u_ring/dstage[7].id/core/d1 ;
 wire \u_dll/u_ring/dstage[7].id/core/d2 ;
 wire \u_dll/u_ring/dstage[7].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[7].id/core/long_n ;
 wire \u_dll/u_ring/dstage[7].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[7].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[7].id/core/selected ;
 wire \u_dll/u_ring/dstage[7].id/core/short_n ;
 wire \u_dll/u_ring/dstage[7].id/core/short_select ;
 wire \u_dll/u_ring/dstage[7].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[7].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[7].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[7].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[7].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[7].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[7].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[7].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[7].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[8].id/zero ;
 wire \u_dll/u_ring/dstage[8].id/const0/HI ;
 wire \u_dll/u_ring/dstage[8].id/core/d0 ;
 wire \u_dll/u_ring/dstage[8].id/core/d1 ;
 wire \u_dll/u_ring/dstage[8].id/core/d2 ;
 wire \u_dll/u_ring/dstage[8].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[8].id/core/long_n ;
 wire \u_dll/u_ring/dstage[8].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[8].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[8].id/core/selected ;
 wire \u_dll/u_ring/dstage[8].id/core/short_n ;
 wire \u_dll/u_ring/dstage[8].id/core/short_select ;
 wire \u_dll/u_ring/dstage[8].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[8].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[8].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[8].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[8].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[8].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[8].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[8].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[8].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/dstage[9].id/zero ;
 wire \u_dll/u_ring/dstage[9].id/const0/HI ;
 wire \u_dll/u_ring/dstage[9].id/core/d0 ;
 wire \u_dll/u_ring/dstage[9].id/core/d1 ;
 wire \u_dll/u_ring/dstage[9].id/core/d2 ;
 wire \u_dll/u_ring/dstage[9].id/core/fast_select ;
 wire \u_dll/u_ring/dstage[9].id/core/long_n ;
 wire \u_dll/u_ring/dstage[9].id/core/reset_n ;
 wire \u_dll/u_ring/dstage[9].id/core/secondary_n ;
 wire \u_dll/u_ring/dstage[9].id/core/selected ;
 wire \u_dll/u_ring/dstage[9].id/core/short_n ;
 wire \u_dll/u_ring/dstage[9].id/core/short_select ;
 wire \u_dll/u_ring/dstage[9].id/core/slow_reset ;
 wire \u_dll/u_ring/dstage[9].id/core/trim_applied[0] ;
 wire \u_dll/u_ring/dstage[9].id/core/trim_applied[1] ;
 wire \u_dll/u_ring/dstage[9].id/core/trim_meta[0] ;
 wire \u_dll/u_ring/dstage[9].id/core/trim_meta[1] ;
 wire \u_dll/u_ring/dstage[9].id/core/trim_reset_n ;
 wire \u_dll/u_ring/dstage[9].id/core/delaymux1/n0 ;
 wire \u_dll/u_ring/dstage[9].id/core/delaymux1/n1 ;
 wire \u_dll/u_ring/dstage[9].id/core/delaymux1/sn ;
 wire \u_dll/u_ring/iss/core/d0 ;
 wire \u_dll/u_ring/iss/core/d1 ;
 wire \u_dll/u_ring/iss/core/d2 ;
 wire \u_dll/u_ring/iss/core/fast_select ;
 wire \u_dll/u_ring/iss/core/long_n ;
 wire \u_dll/u_ring/iss/core/reset_n ;
 wire \u_dll/u_ring/iss/core/secondary_n ;
 wire \u_dll/u_ring/iss/core/selected ;
 wire \u_dll/u_ring/iss/core/short_n ;
 wire \u_dll/u_ring/iss/core/short_select ;
 wire \u_dll/u_ring/iss/core/slow_reset ;
 wire \u_dll/u_ring/iss/core/trim_applied[0] ;
 wire \u_dll/u_ring/iss/core/trim_applied[1] ;
 wire \u_dll/u_ring/iss/core/trim_meta[0] ;
 wire \u_dll/u_ring/iss/core/trim_meta[1] ;
 wire \u_dll/u_ring/iss/core/trim_reset_n ;
 wire \u_dll/u_ring/iss/core/delaymux1/n0 ;
 wire \u_dll/u_ring/iss/core/delaymux1/n1 ;
 wire \u_dll/u_ring/iss/core/delaymux1/sn ;
 wire \u_dll/u_control/net1 ;
 wire \u_dll/u_control/net2 ;
 wire \u_dll/u_control/net3 ;
 wire \u_dll/u_control/net4 ;
 wire \u_dll/u_control/net5 ;
 wire \u_dll/u_control/net6 ;
 wire \u_dll/u_control/net7 ;
 wire \u_dll/u_control/net8 ;
 wire \u_dll/u_control/net9 ;
 wire \u_dll/u_control/net10 ;
 wire \u_dll/u_control/net11 ;
 wire \u_dll/u_control/net12 ;
 wire \u_dll/u_control/net13 ;
 wire \u_dll/u_control/net14 ;
 wire \u_dll/u_control/net15 ;
 wire \u_dll/u_control/net16 ;
 wire \u_dll/u_control/net17 ;
 wire \u_dll/u_control/net18 ;
 wire \u_dll/u_control/net19 ;
 wire \u_dll/u_control/net20 ;
 wire \u_dll/u_control/net21 ;
 wire \u_dll/u_control/net22 ;
 wire \u_dll/u_control/net23 ;
 wire \u_dll/u_control/net24 ;
 wire \u_dll/u_control/net25 ;
 wire \u_dll/u_control/net26 ;
 wire \u_dll/u_control/net27 ;
 wire \u_dll/u_control/net28 ;
 wire \u_dll/u_control/net29 ;
 wire \u_dll/u_control/net30 ;
 wire \u_dll/u_control/net31 ;
 wire \u_dll/u_control/net32 ;
 wire \u_dll/u_control/net33 ;
 wire \u_dll/u_control/net34 ;
 wire \u_dll/u_control/net35 ;
 wire \u_dll/u_control/net36 ;
 wire \u_dll/u_control/net37 ;
 wire \u_dll/u_control/net38 ;
 wire \u_dll/u_control/net39 ;
 wire \u_dll/u_control/net40 ;
 wire \u_dll/u_control/net41 ;
 wire \u_dll/u_control/net42 ;
 wire \u_dll/u_control/net43 ;
 wire \u_dll/u_control/net44 ;
 wire \u_dll/u_control/net45 ;
 wire \u_dll/u_control/net46 ;
 wire \u_dll/u_control/net47 ;
 wire \u_dll/u_control/net48 ;
 wire \u_dll/u_control/net49 ;
 wire \u_dll/u_control/net50 ;
 wire \u_dll/u_control/net51 ;
 wire \u_dll/u_control/net52 ;
 wire \u_dll/u_control/net53 ;
 wire \u_dll/u_control/net54 ;
 wire \u_dll/u_control/net55 ;
 wire \u_dll/u_control/net56 ;
 wire \u_dll/u_control/net57 ;
 wire \u_dll/u_control/net58 ;
 wire \u_dll/u_div0/net59 ;
 wire \u_dll/u_div1/net60 ;
 wire \u_dll/net61 ;
 wire \u_dll/u_control/net62 ;
 wire \u_dll/u_control/net63 ;
 wire \u_dll/u_control/net64 ;
 wire \u_dll/u_control/net65 ;
 wire \u_dll/u_control/net66 ;
 wire \u_dll/u_control/net67 ;
 wire \u_dll/u_control/net68 ;
 wire \u_dll/u_control/net69 ;
 wire \u_dll/u_control/net70 ;
 wire \u_dll/u_control/net71 ;
 wire \u_dll/u_control/net72 ;
 wire \u_dll/u_control/net73 ;
 wire \u_dll/u_control/net74 ;
 wire \u_dll/u_control/net75 ;
 wire \u_dll/u_control/net76 ;
 wire \u_dll/u_control/net77 ;
 wire \u_dll/u_control/net78 ;
 wire \u_dll/u_control/net79 ;
 wire \u_dll/net80 ;
 wire \u_dll/u_control/net81 ;
 wire \u_dll/net82 ;
 wire \u_dll/u_control/net83 ;
 wire \u_dll/u_control/net84 ;
 wire \u_dll/u_control/net85 ;
 wire \u_dll/u_control/net86 ;
 wire \u_dll/u_control/net87 ;
 wire \u_dll/u_control/net88 ;
 wire \u_dll/u_control/net89 ;
 wire \u_dll/u_control/net90 ;
 wire \u_dll/u_control/net91 ;
 wire \u_dll/u_control/net92 ;
 wire \u_dll/u_control/net93 ;
 wire \u_dll/u_control/net94 ;
 wire \u_dll/u_control/net95 ;
 wire \u_dll/u_control/net96 ;
 wire \u_dll/net97 ;
 wire \u_dll/net98 ;
 wire \u_dll/net99 ;
 wire \u_dll/net100 ;
 wire net;
 wire net126;
 wire \clknet_1_0_0_u_dll/controller_ref_clk ;
 wire \clknet_1_1_0_u_dll/controller_ref_clk ;
 wire \clknet_2_0_0_u_dll/controller_ref_clk ;
 wire \clknet_2_1_0_u_dll/controller_ref_clk ;
 wire \clknet_2_2_0_u_dll/controller_ref_clk ;
 wire \clknet_2_3_0_u_dll/controller_ref_clk ;
 wire \clknet_4_0_0_u_dll/controller_ref_clk ;
 wire \clknet_4_1_0_u_dll/controller_ref_clk ;
 wire \clknet_4_2_0_u_dll/controller_ref_clk ;
 wire \clknet_4_3_0_u_dll/controller_ref_clk ;
 wire \clknet_4_4_0_u_dll/controller_ref_clk ;
 wire \clknet_4_5_0_u_dll/controller_ref_clk ;
 wire \clknet_4_6_0_u_dll/controller_ref_clk ;
 wire \clknet_4_7_0_u_dll/controller_ref_clk ;
 wire \clknet_4_8_0_u_dll/controller_ref_clk ;
 wire \clknet_4_9_0_u_dll/controller_ref_clk ;
 wire \clknet_4_10_0_u_dll/controller_ref_clk ;
 wire \clknet_4_11_0_u_dll/controller_ref_clk ;
 wire \clknet_4_12_0_u_dll/controller_ref_clk ;
 wire \clknet_4_13_0_u_dll/controller_ref_clk ;
 wire \clknet_4_14_0_u_dll/controller_ref_clk ;
 wire \clknet_4_15_0_u_dll/controller_ref_clk ;
 wire \clknet_5_0__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_1__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_2__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_3__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_4__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_5__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_6__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_7__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_8__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_9__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_10__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_11__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_12__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_13__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_14__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_15__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_16__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_17__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_18__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_19__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_20__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_21__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_22__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_23__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_24__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_25__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_26__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_27__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_28__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_29__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_30__leaf_u_dll/controller_ref_clk ;
 wire \clknet_5_31__leaf_u_dll/controller_ref_clk ;
 wire \clknet_0_u_dll/controller_ring_clk ;
 wire \clknet_1_0_0_u_dll/controller_ring_clk ;
 wire \clknet_1_1_0_u_dll/controller_ring_clk ;
 wire \clknet_3_0_0_u_dll/controller_ring_clk ;
 wire \clknet_3_1_0_u_dll/controller_ring_clk ;
 wire \clknet_3_2_0_u_dll/controller_ring_clk ;
 wire \clknet_3_3_0_u_dll/controller_ring_clk ;
 wire \clknet_3_4_0_u_dll/controller_ring_clk ;
 wire \clknet_3_5_0_u_dll/controller_ring_clk ;
 wire \clknet_3_6_0_u_dll/controller_ring_clk ;
 wire \clknet_3_7_0_u_dll/controller_ring_clk ;
 wire \clknet_4_0__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_1__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_2__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_3__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_4__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_5__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_6__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_7__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_8__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_9__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_10__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_11__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_12__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_13__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_14__leaf_u_dll/controller_ring_clk ;
 wire \clknet_4_15__leaf_u_dll/controller_ring_clk ;
 wire \u_dll/u_control/net129 ;
 wire \u_dll/u_control/net130 ;
 wire \u_dll/u_control/net131 ;
 wire \u_dll/u_control/net132 ;
 wire [13:0] \u_dll/u_control/tuning_q8 ;

 sg13cmos5l_decap_8 FILLER_0_0 ();
 sg13cmos5l_decap_8 FILLER_0_14 ();
 sg13cmos5l_fill_2 FILLER_0_176 ();
 sg13cmos5l_fill_1 FILLER_0_196 ();
 sg13cmos5l_decap_4 FILLER_0_21 ();
 sg13cmos5l_fill_1 FILLER_0_210 ();
 sg13cmos5l_fill_1 FILLER_0_217 ();
 sg13cmos5l_fill_1 FILLER_0_25 ();
 sg13cmos5l_decap_4 FILLER_0_251 ();
 sg13cmos5l_decap_8 FILLER_0_29 ();
 sg13cmos5l_fill_2 FILLER_0_290 ();
 sg13cmos5l_fill_2 FILLER_0_336 ();
 sg13cmos5l_decap_8 FILLER_0_36 ();
 sg13cmos5l_decap_8 FILLER_0_365 ();
 sg13cmos5l_decap_8 FILLER_0_372 ();
 sg13cmos5l_decap_8 FILLER_0_379 ();
 sg13cmos5l_decap_8 FILLER_0_386 ();
 sg13cmos5l_decap_8 FILLER_0_393 ();
 sg13cmos5l_decap_4 FILLER_0_400 ();
 sg13cmos5l_decap_4 FILLER_0_43 ();
 sg13cmos5l_fill_1 FILLER_0_47 ();
 sg13cmos5l_decap_8 FILLER_0_7 ();
 sg13cmos5l_fill_2 FILLER_10_112 ();
 sg13cmos5l_fill_2 FILLER_10_15 ();
 sg13cmos5l_decap_8 FILLER_10_212 ();
 sg13cmos5l_fill_1 FILLER_10_219 ();
 sg13cmos5l_decap_4 FILLER_10_228 ();
 sg13cmos5l_fill_2 FILLER_10_232 ();
 sg13cmos5l_fill_2 FILLER_10_259 ();
 sg13cmos5l_fill_1 FILLER_10_27 ();
 sg13cmos5l_fill_2 FILLER_10_280 ();
 sg13cmos5l_fill_1 FILLER_10_282 ();
 sg13cmos5l_fill_1 FILLER_10_307 ();
 sg13cmos5l_fill_1 FILLER_10_332 ();
 sg13cmos5l_fill_1 FILLER_10_338 ();
 sg13cmos5l_decap_4 FILLER_10_369 ();
 sg13cmos5l_fill_2 FILLER_10_373 ();
 sg13cmos5l_decap_8 FILLER_10_396 ();
 sg13cmos5l_decap_4 FILLER_10_4 ();
 sg13cmos5l_fill_1 FILLER_10_403 ();
 sg13cmos5l_fill_1 FILLER_10_55 ();
 sg13cmos5l_fill_1 FILLER_10_73 ();
 sg13cmos5l_fill_2 FILLER_10_8 ();
 sg13cmos5l_fill_1 FILLER_11_147 ();
 sg13cmos5l_decap_8 FILLER_11_212 ();
 sg13cmos5l_decap_8 FILLER_11_219 ();
 sg13cmos5l_decap_8 FILLER_11_226 ();
 sg13cmos5l_decap_8 FILLER_11_233 ();
 sg13cmos5l_fill_2 FILLER_11_240 ();
 sg13cmos5l_decap_8 FILLER_11_249 ();
 sg13cmos5l_fill_2 FILLER_11_256 ();
 sg13cmos5l_fill_1 FILLER_11_26 ();
 sg13cmos5l_decap_8 FILLER_11_284 ();
 sg13cmos5l_fill_2 FILLER_11_291 ();
 sg13cmos5l_fill_1 FILLER_11_293 ();
 sg13cmos5l_fill_1 FILLER_11_333 ();
 sg13cmos5l_decap_8 FILLER_11_345 ();
 sg13cmos5l_fill_2 FILLER_11_352 ();
 sg13cmos5l_fill_1 FILLER_11_354 ();
 sg13cmos5l_fill_2 FILLER_11_382 ();
 sg13cmos5l_decap_4 FILLER_11_397 ();
 sg13cmos5l_fill_1 FILLER_11_40 ();
 sg13cmos5l_fill_2 FILLER_12_112 ();
 sg13cmos5l_fill_2 FILLER_12_163 ();
 sg13cmos5l_fill_2 FILLER_12_178 ();
 sg13cmos5l_decap_4 FILLER_12_210 ();
 sg13cmos5l_fill_1 FILLER_12_268 ();
 sg13cmos5l_decap_4 FILLER_12_31 ();
 sg13cmos5l_fill_1 FILLER_12_339 ();
 sg13cmos5l_fill_2 FILLER_12_367 ();
 sg13cmos5l_decap_8 FILLER_12_397 ();
 sg13cmos5l_fill_1 FILLER_13_11 ();
 sg13cmos5l_fill_2 FILLER_13_212 ();
 sg13cmos5l_fill_1 FILLER_13_271 ();
 sg13cmos5l_fill_2 FILLER_13_299 ();
 sg13cmos5l_fill_1 FILLER_13_301 ();
 sg13cmos5l_decap_4 FILLER_13_321 ();
 sg13cmos5l_fill_2 FILLER_13_325 ();
 sg13cmos5l_fill_1 FILLER_13_361 ();
 sg13cmos5l_decap_4 FILLER_13_371 ();
 sg13cmos5l_fill_1 FILLER_13_375 ();
 sg13cmos5l_fill_2 FILLER_13_385 ();
 sg13cmos5l_decap_8 FILLER_13_395 ();
 sg13cmos5l_fill_2 FILLER_13_4 ();
 sg13cmos5l_fill_2 FILLER_13_402 ();
 sg13cmos5l_fill_1 FILLER_14_104 ();
 sg13cmos5l_fill_2 FILLER_14_196 ();
 sg13cmos5l_fill_2 FILLER_14_207 ();
 sg13cmos5l_decap_4 FILLER_14_212 ();
 sg13cmos5l_fill_1 FILLER_14_216 ();
 sg13cmos5l_fill_1 FILLER_14_241 ();
 sg13cmos5l_fill_2 FILLER_14_275 ();
 sg13cmos5l_fill_1 FILLER_14_319 ();
 sg13cmos5l_fill_1 FILLER_14_34 ();
 sg13cmos5l_decap_8 FILLER_14_347 ();
 sg13cmos5l_fill_2 FILLER_14_375 ();
 sg13cmos5l_decap_4 FILLER_14_399 ();
 sg13cmos5l_fill_2 FILLER_14_4 ();
 sg13cmos5l_fill_1 FILLER_14_403 ();
 sg13cmos5l_fill_1 FILLER_15_117 ();
 sg13cmos5l_fill_1 FILLER_15_170 ();
 sg13cmos5l_decap_8 FILLER_15_206 ();
 sg13cmos5l_fill_1 FILLER_15_213 ();
 sg13cmos5l_decap_8 FILLER_15_245 ();
 sg13cmos5l_fill_1 FILLER_15_261 ();
 sg13cmos5l_decap_8 FILLER_15_271 ();
 sg13cmos5l_decap_4 FILLER_15_278 ();
 sg13cmos5l_fill_1 FILLER_15_309 ();
 sg13cmos5l_decap_4 FILLER_15_319 ();
 sg13cmos5l_fill_1 FILLER_15_323 ();
 sg13cmos5l_decap_8 FILLER_15_394 ();
 sg13cmos5l_fill_2 FILLER_16_16 ();
 sg13cmos5l_fill_1 FILLER_16_179 ();
 sg13cmos5l_decap_8 FILLER_16_212 ();
 sg13cmos5l_decap_8 FILLER_16_23 ();
 sg13cmos5l_decap_4 FILLER_16_246 ();
 sg13cmos5l_fill_2 FILLER_16_250 ();
 sg13cmos5l_fill_2 FILLER_16_256 ();
 sg13cmos5l_fill_1 FILLER_16_266 ();
 sg13cmos5l_decap_8 FILLER_16_294 ();
 sg13cmos5l_decap_8 FILLER_16_30 ();
 sg13cmos5l_fill_2 FILLER_16_301 ();
 sg13cmos5l_fill_2 FILLER_16_318 ();
 sg13cmos5l_decap_8 FILLER_16_328 ();
 sg13cmos5l_decap_4 FILLER_16_335 ();
 sg13cmos5l_fill_1 FILLER_16_351 ();
 sg13cmos5l_fill_2 FILLER_16_370 ();
 sg13cmos5l_fill_1 FILLER_16_372 ();
 sg13cmos5l_decap_4 FILLER_16_398 ();
 sg13cmos5l_fill_2 FILLER_16_4 ();
 sg13cmos5l_fill_2 FILLER_16_402 ();
 sg13cmos5l_fill_1 FILLER_16_70 ();
 sg13cmos5l_fill_1 FILLER_16_92 ();
 sg13cmos5l_decap_4 FILLER_17_0 ();
 sg13cmos5l_fill_1 FILLER_17_142 ();
 sg13cmos5l_fill_1 FILLER_17_208 ();
 sg13cmos5l_fill_2 FILLER_17_212 ();
 sg13cmos5l_decap_8 FILLER_17_295 ();
 sg13cmos5l_decap_8 FILLER_17_302 ();
 sg13cmos5l_decap_4 FILLER_17_309 ();
 sg13cmos5l_fill_1 FILLER_17_313 ();
 sg13cmos5l_fill_1 FILLER_17_33 ();
 sg13cmos5l_fill_2 FILLER_17_330 ();
 sg13cmos5l_fill_2 FILLER_17_343 ();
 sg13cmos5l_fill_2 FILLER_17_38 ();
 sg13cmos5l_fill_1 FILLER_17_382 ();
 sg13cmos5l_decap_4 FILLER_17_399 ();
 sg13cmos5l_fill_2 FILLER_17_4 ();
 sg13cmos5l_fill_1 FILLER_17_403 ();
 sg13cmos5l_fill_2 FILLER_18_128 ();
 sg13cmos5l_fill_2 FILLER_18_206 ();
 sg13cmos5l_fill_1 FILLER_18_208 ();
 sg13cmos5l_decap_4 FILLER_18_212 ();
 sg13cmos5l_fill_2 FILLER_18_216 ();
 sg13cmos5l_decap_4 FILLER_18_232 ();
 sg13cmos5l_fill_2 FILLER_18_236 ();
 sg13cmos5l_fill_2 FILLER_18_250 ();
 sg13cmos5l_fill_1 FILLER_18_252 ();
 sg13cmos5l_decap_4 FILLER_18_297 ();
 sg13cmos5l_fill_2 FILLER_18_319 ();
 sg13cmos5l_decap_8 FILLER_18_397 ();
 sg13cmos5l_fill_2 FILLER_18_4 ();
 sg13cmos5l_fill_1 FILLER_18_45 ();
 sg13cmos5l_fill_1 FILLER_18_6 ();
 sg13cmos5l_fill_2 FILLER_18_62 ();
 sg13cmos5l_fill_2 FILLER_18_78 ();
 sg13cmos5l_fill_2 FILLER_18_93 ();
 sg13cmos5l_decap_4 FILLER_19_11 ();
 sg13cmos5l_fill_2 FILLER_19_119 ();
 sg13cmos5l_fill_1 FILLER_19_125 ();
 sg13cmos5l_fill_2 FILLER_19_137 ();
 sg13cmos5l_fill_1 FILLER_19_139 ();
 sg13cmos5l_fill_1 FILLER_19_143 ();
 sg13cmos5l_fill_1 FILLER_19_147 ();
 sg13cmos5l_fill_1 FILLER_19_163 ();
 sg13cmos5l_fill_1 FILLER_19_170 ();
 sg13cmos5l_fill_2 FILLER_19_212 ();
 sg13cmos5l_fill_1 FILLER_19_214 ();
 sg13cmos5l_fill_1 FILLER_19_237 ();
 sg13cmos5l_fill_2 FILLER_19_250 ();
 sg13cmos5l_fill_1 FILLER_19_298 ();
 sg13cmos5l_fill_1 FILLER_19_326 ();
 sg13cmos5l_fill_2 FILLER_19_337 ();
 sg13cmos5l_decap_4 FILLER_19_399 ();
 sg13cmos5l_decap_8 FILLER_19_4 ();
 sg13cmos5l_fill_1 FILLER_19_403 ();
 sg13cmos5l_fill_2 FILLER_19_48 ();
 sg13cmos5l_fill_1 FILLER_19_50 ();
 sg13cmos5l_fill_2 FILLER_1_0 ();
 sg13cmos5l_decap_4 FILLER_1_15 ();
 sg13cmos5l_fill_2 FILLER_1_173 ();
 sg13cmos5l_fill_1 FILLER_1_19 ();
 sg13cmos5l_fill_1 FILLER_1_229 ();
 sg13cmos5l_fill_2 FILLER_1_279 ();
 sg13cmos5l_fill_2 FILLER_1_304 ();
 sg13cmos5l_fill_1 FILLER_1_333 ();
 sg13cmos5l_decap_8 FILLER_1_367 ();
 sg13cmos5l_decap_8 FILLER_1_374 ();
 sg13cmos5l_decap_8 FILLER_1_381 ();
 sg13cmos5l_decap_8 FILLER_1_388 ();
 sg13cmos5l_decap_8 FILLER_1_395 ();
 sg13cmos5l_fill_2 FILLER_1_402 ();
 sg13cmos5l_fill_2 FILLER_1_55 ();
 sg13cmos5l_fill_2 FILLER_20_141 ();
 sg13cmos5l_fill_1 FILLER_20_17 ();
 sg13cmos5l_fill_2 FILLER_20_212 ();
 sg13cmos5l_fill_1 FILLER_20_353 ();
 sg13cmos5l_decap_4 FILLER_20_364 ();
 sg13cmos5l_decap_4 FILLER_20_399 ();
 sg13cmos5l_fill_1 FILLER_20_403 ();
 sg13cmos5l_fill_2 FILLER_20_53 ();
 sg13cmos5l_fill_1 FILLER_20_82 ();
 sg13cmos5l_fill_2 FILLER_21_162 ();
 sg13cmos5l_fill_2 FILLER_21_191 ();
 sg13cmos5l_fill_2 FILLER_21_211 ();
 sg13cmos5l_fill_1 FILLER_21_213 ();
 sg13cmos5l_decap_4 FILLER_21_349 ();
 sg13cmos5l_fill_2 FILLER_21_353 ();
 sg13cmos5l_decap_8 FILLER_21_358 ();
 sg13cmos5l_decap_4 FILLER_21_365 ();
 sg13cmos5l_fill_2 FILLER_21_399 ();
 sg13cmos5l_decap_4 FILLER_21_48 ();
 sg13cmos5l_fill_1 FILLER_21_57 ();
 sg13cmos5l_decap_8 FILLER_21_64 ();
 sg13cmos5l_fill_1 FILLER_21_71 ();
 sg13cmos5l_fill_2 FILLER_21_8 ();
 sg13cmos5l_fill_1 FILLER_21_94 ();
 sg13cmos5l_fill_1 FILLER_22_134 ();
 sg13cmos5l_decap_4 FILLER_22_148 ();
 sg13cmos5l_fill_2 FILLER_22_193 ();
 sg13cmos5l_decap_8 FILLER_22_212 ();
 sg13cmos5l_decap_8 FILLER_22_219 ();
 sg13cmos5l_decap_8 FILLER_22_226 ();
 sg13cmos5l_decap_8 FILLER_22_233 ();
 sg13cmos5l_decap_8 FILLER_22_240 ();
 sg13cmos5l_decap_8 FILLER_22_247 ();
 sg13cmos5l_decap_8 FILLER_22_254 ();
 sg13cmos5l_decap_8 FILLER_22_261 ();
 sg13cmos5l_decap_8 FILLER_22_268 ();
 sg13cmos5l_decap_8 FILLER_22_275 ();
 sg13cmos5l_decap_8 FILLER_22_282 ();
 sg13cmos5l_decap_8 FILLER_22_289 ();
 sg13cmos5l_decap_8 FILLER_22_296 ();
 sg13cmos5l_decap_8 FILLER_22_303 ();
 sg13cmos5l_decap_8 FILLER_22_310 ();
 sg13cmos5l_decap_8 FILLER_22_317 ();
 sg13cmos5l_decap_8 FILLER_22_324 ();
 sg13cmos5l_decap_8 FILLER_22_331 ();
 sg13cmos5l_decap_8 FILLER_22_338 ();
 sg13cmos5l_decap_8 FILLER_22_345 ();
 sg13cmos5l_decap_8 FILLER_22_352 ();
 sg13cmos5l_decap_8 FILLER_22_359 ();
 sg13cmos5l_decap_8 FILLER_22_366 ();
 sg13cmos5l_fill_2 FILLER_22_37 ();
 sg13cmos5l_decap_8 FILLER_22_373 ();
 sg13cmos5l_decap_8 FILLER_22_380 ();
 sg13cmos5l_decap_8 FILLER_22_387 ();
 sg13cmos5l_decap_8 FILLER_22_394 ();
 sg13cmos5l_fill_2 FILLER_22_4 ();
 sg13cmos5l_fill_2 FILLER_22_47 ();
 sg13cmos5l_fill_1 FILLER_23_190 ();
 sg13cmos5l_fill_1 FILLER_23_275 ();
 sg13cmos5l_fill_2 FILLER_23_316 ();
 sg13cmos5l_decap_4 FILLER_23_35 ();
 sg13cmos5l_fill_1 FILLER_23_376 ();
 sg13cmos5l_fill_1 FILLER_23_39 ();
 sg13cmos5l_fill_1 FILLER_23_4 ();
 sg13cmos5l_decap_4 FILLER_23_83 ();
 sg13cmos5l_fill_2 FILLER_23_92 ();
 sg13cmos5l_fill_1 FILLER_24_123 ();
 sg13cmos5l_fill_1 FILLER_24_190 ();
 sg13cmos5l_fill_2 FILLER_24_277 ();
 sg13cmos5l_fill_1 FILLER_24_284 ();
 sg13cmos5l_fill_1 FILLER_24_301 ();
 sg13cmos5l_fill_1 FILLER_24_329 ();
 sg13cmos5l_fill_2 FILLER_24_375 ();
 sg13cmos5l_fill_2 FILLER_24_42 ();
 sg13cmos5l_fill_2 FILLER_24_71 ();
 sg13cmos5l_fill_2 FILLER_24_77 ();
 sg13cmos5l_fill_2 FILLER_24_84 ();
 sg13cmos5l_fill_2 FILLER_24_94 ();
 sg13cmos5l_decap_4 FILLER_25_10 ();
 sg13cmos5l_decap_4 FILLER_25_107 ();
 sg13cmos5l_fill_2 FILLER_25_111 ();
 sg13cmos5l_fill_1 FILLER_25_139 ();
 sg13cmos5l_fill_1 FILLER_25_148 ();
 sg13cmos5l_decap_4 FILLER_25_19 ();
 sg13cmos5l_fill_1 FILLER_25_228 ();
 sg13cmos5l_fill_1 FILLER_25_256 ();
 sg13cmos5l_fill_1 FILLER_25_283 ();
 sg13cmos5l_fill_1 FILLER_25_290 ();
 sg13cmos5l_fill_2 FILLER_25_4 ();
 sg13cmos5l_fill_2 FILLER_25_402 ();
 sg13cmos5l_fill_2 FILLER_25_82 ();
 sg13cmos5l_fill_1 FILLER_25_89 ();
 sg13cmos5l_decap_4 FILLER_26_104 ();
 sg13cmos5l_fill_1 FILLER_26_108 ();
 sg13cmos5l_decap_8 FILLER_26_11 ();
 sg13cmos5l_fill_1 FILLER_26_121 ();
 sg13cmos5l_fill_1 FILLER_26_176 ();
 sg13cmos5l_decap_8 FILLER_26_24 ();
 sg13cmos5l_fill_2 FILLER_26_280 ();
 sg13cmos5l_fill_2 FILLER_26_31 ();
 sg13cmos5l_fill_1 FILLER_26_33 ();
 sg13cmos5l_fill_1 FILLER_26_363 ();
 sg13cmos5l_fill_2 FILLER_26_4 ();
 sg13cmos5l_decap_8 FILLER_26_66 ();
 sg13cmos5l_decap_4 FILLER_26_73 ();
 sg13cmos5l_fill_2 FILLER_26_77 ();
 sg13cmos5l_decap_4 FILLER_26_92 ();
 sg13cmos5l_fill_2 FILLER_26_99 ();
 sg13cmos5l_fill_2 FILLER_27_118 ();
 sg13cmos5l_fill_1 FILLER_27_128 ();
 sg13cmos5l_fill_1 FILLER_27_140 ();
 sg13cmos5l_fill_2 FILLER_27_161 ();
 sg13cmos5l_fill_2 FILLER_27_180 ();
 sg13cmos5l_fill_2 FILLER_27_194 ();
 sg13cmos5l_fill_2 FILLER_27_298 ();
 sg13cmos5l_fill_2 FILLER_27_304 ();
 sg13cmos5l_fill_1 FILLER_27_306 ();
 sg13cmos5l_fill_1 FILLER_27_317 ();
 sg13cmos5l_decap_4 FILLER_27_335 ();
 sg13cmos5l_fill_2 FILLER_27_339 ();
 sg13cmos5l_fill_2 FILLER_27_349 ();
 sg13cmos5l_fill_1 FILLER_27_355 ();
 sg13cmos5l_decap_4 FILLER_27_37 ();
 sg13cmos5l_decap_4 FILLER_27_44 ();
 sg13cmos5l_fill_2 FILLER_27_48 ();
 sg13cmos5l_fill_1 FILLER_27_53 ();
 sg13cmos5l_decap_8 FILLER_27_59 ();
 sg13cmos5l_decap_8 FILLER_27_66 ();
 sg13cmos5l_decap_8 FILLER_27_73 ();
 sg13cmos5l_fill_2 FILLER_27_83 ();
 sg13cmos5l_fill_1 FILLER_27_85 ();
 sg13cmos5l_fill_2 FILLER_28_0 ();
 sg13cmos5l_fill_2 FILLER_28_105 ();
 sg13cmos5l_fill_2 FILLER_28_118 ();
 sg13cmos5l_fill_1 FILLER_28_128 ();
 sg13cmos5l_fill_1 FILLER_28_231 ();
 sg13cmos5l_fill_2 FILLER_28_301 ();
 sg13cmos5l_fill_1 FILLER_28_307 ();
 sg13cmos5l_fill_2 FILLER_28_314 ();
 sg13cmos5l_fill_1 FILLER_28_316 ();
 sg13cmos5l_fill_1 FILLER_28_337 ();
 sg13cmos5l_fill_2 FILLER_28_368 ();
 sg13cmos5l_decap_8 FILLER_28_397 ();
 sg13cmos5l_fill_1 FILLER_28_59 ();
 sg13cmos5l_fill_2 FILLER_29_0 ();
 sg13cmos5l_fill_1 FILLER_29_107 ();
 sg13cmos5l_fill_2 FILLER_29_113 ();
 sg13cmos5l_fill_2 FILLER_29_128 ();
 sg13cmos5l_fill_1 FILLER_29_130 ();
 sg13cmos5l_fill_1 FILLER_29_136 ();
 sg13cmos5l_fill_2 FILLER_29_142 ();
 sg13cmos5l_fill_1 FILLER_29_144 ();
 sg13cmos5l_fill_1 FILLER_29_149 ();
 sg13cmos5l_decap_4 FILLER_29_178 ();
 sg13cmos5l_fill_2 FILLER_29_210 ();
 sg13cmos5l_fill_1 FILLER_29_212 ();
 sg13cmos5l_decap_4 FILLER_29_221 ();
 sg13cmos5l_fill_1 FILLER_29_228 ();
 sg13cmos5l_fill_2 FILLER_29_29 ();
 sg13cmos5l_fill_2 FILLER_29_302 ();
 sg13cmos5l_fill_1 FILLER_29_308 ();
 sg13cmos5l_decap_4 FILLER_29_320 ();
 sg13cmos5l_fill_2 FILLER_29_324 ();
 sg13cmos5l_fill_1 FILLER_29_331 ();
 sg13cmos5l_fill_2 FILLER_29_359 ();
 sg13cmos5l_fill_1 FILLER_29_361 ();
 sg13cmos5l_fill_2 FILLER_29_370 ();
 sg13cmos5l_decap_4 FILLER_29_399 ();
 sg13cmos5l_fill_1 FILLER_29_403 ();
 sg13cmos5l_fill_1 FILLER_29_90 ();
 sg13cmos5l_fill_2 FILLER_2_0 ();
 sg13cmos5l_fill_1 FILLER_2_119 ();
 sg13cmos5l_fill_1 FILLER_2_126 ();
 sg13cmos5l_decap_8 FILLER_2_15 ();
 sg13cmos5l_fill_1 FILLER_2_153 ();
 sg13cmos5l_decap_8 FILLER_2_22 ();
 sg13cmos5l_fill_1 FILLER_2_226 ();
 sg13cmos5l_fill_2 FILLER_2_236 ();
 sg13cmos5l_decap_4 FILLER_2_245 ();
 sg13cmos5l_fill_1 FILLER_2_249 ();
 sg13cmos5l_fill_2 FILLER_2_273 ();
 sg13cmos5l_decap_8 FILLER_2_29 ();
 sg13cmos5l_fill_2 FILLER_2_328 ();
 sg13cmos5l_decap_4 FILLER_2_369 ();
 sg13cmos5l_fill_2 FILLER_2_373 ();
 sg13cmos5l_fill_2 FILLER_2_402 ();
 sg13cmos5l_fill_2 FILLER_30_120 ();
 sg13cmos5l_fill_1 FILLER_30_148 ();
 sg13cmos5l_fill_1 FILLER_30_154 ();
 sg13cmos5l_decap_8 FILLER_30_163 ();
 sg13cmos5l_fill_1 FILLER_30_248 ();
 sg13cmos5l_fill_2 FILLER_30_281 ();
 sg13cmos5l_fill_1 FILLER_30_283 ();
 sg13cmos5l_decap_4 FILLER_30_289 ();
 sg13cmos5l_decap_4 FILLER_30_303 ();
 sg13cmos5l_fill_1 FILLER_30_307 ();
 sg13cmos5l_decap_4 FILLER_30_316 ();
 sg13cmos5l_decap_8 FILLER_30_327 ();
 sg13cmos5l_decap_4 FILLER_30_334 ();
 sg13cmos5l_fill_2 FILLER_30_338 ();
 sg13cmos5l_fill_2 FILLER_30_34 ();
 sg13cmos5l_decap_4 FILLER_30_349 ();
 sg13cmos5l_fill_2 FILLER_30_353 ();
 sg13cmos5l_decap_4 FILLER_30_365 ();
 sg13cmos5l_fill_2 FILLER_30_372 ();
 sg13cmos5l_fill_1 FILLER_30_380 ();
 sg13cmos5l_decap_4 FILLER_30_384 ();
 sg13cmos5l_decap_8 FILLER_30_393 ();
 sg13cmos5l_decap_4 FILLER_30_400 ();
 sg13cmos5l_fill_1 FILLER_31_101 ();
 sg13cmos5l_fill_2 FILLER_31_140 ();
 sg13cmos5l_fill_1 FILLER_31_142 ();
 sg13cmos5l_decap_8 FILLER_31_159 ();
 sg13cmos5l_decap_8 FILLER_31_166 ();
 sg13cmos5l_decap_8 FILLER_31_173 ();
 sg13cmos5l_decap_8 FILLER_31_180 ();
 sg13cmos5l_fill_2 FILLER_31_187 ();
 sg13cmos5l_fill_1 FILLER_31_189 ();
 sg13cmos5l_fill_2 FILLER_31_195 ();
 sg13cmos5l_fill_1 FILLER_31_197 ();
 sg13cmos5l_fill_2 FILLER_31_213 ();
 sg13cmos5l_decap_4 FILLER_31_224 ();
 sg13cmos5l_fill_1 FILLER_31_228 ();
 sg13cmos5l_fill_1 FILLER_31_302 ();
 sg13cmos5l_fill_2 FILLER_31_335 ();
 sg13cmos5l_decap_8 FILLER_31_343 ();
 sg13cmos5l_decap_4 FILLER_31_350 ();
 sg13cmos5l_fill_2 FILLER_31_401 ();
 sg13cmos5l_fill_1 FILLER_31_403 ();
 sg13cmos5l_fill_2 FILLER_31_99 ();
 sg13cmos5l_fill_2 FILLER_32_0 ();
 sg13cmos5l_fill_2 FILLER_32_133 ();
 sg13cmos5l_fill_2 FILLER_32_143 ();
 sg13cmos5l_fill_1 FILLER_32_145 ();
 sg13cmos5l_decap_4 FILLER_32_159 ();
 sg13cmos5l_fill_2 FILLER_32_183 ();
 sg13cmos5l_fill_1 FILLER_32_185 ();
 sg13cmos5l_fill_2 FILLER_32_191 ();
 sg13cmos5l_fill_1 FILLER_32_193 ();
 sg13cmos5l_decap_4 FILLER_32_198 ();
 sg13cmos5l_fill_2 FILLER_32_202 ();
 sg13cmos5l_fill_1 FILLER_32_223 ();
 sg13cmos5l_decap_4 FILLER_32_227 ();
 sg13cmos5l_fill_1 FILLER_32_247 ();
 sg13cmos5l_fill_1 FILLER_32_252 ();
 sg13cmos5l_fill_2 FILLER_32_29 ();
 sg13cmos5l_fill_2 FILLER_32_298 ();
 sg13cmos5l_fill_1 FILLER_32_304 ();
 sg13cmos5l_fill_2 FILLER_32_313 ();
 sg13cmos5l_fill_1 FILLER_32_315 ();
 sg13cmos5l_decap_8 FILLER_32_321 ();
 sg13cmos5l_fill_2 FILLER_32_328 ();
 sg13cmos5l_decap_8 FILLER_32_354 ();
 sg13cmos5l_fill_2 FILLER_32_365 ();
 sg13cmos5l_fill_1 FILLER_32_367 ();
 sg13cmos5l_decap_8 FILLER_32_372 ();
 sg13cmos5l_fill_1 FILLER_32_379 ();
 sg13cmos5l_decap_8 FILLER_32_393 ();
 sg13cmos5l_decap_4 FILLER_32_400 ();
 sg13cmos5l_fill_1 FILLER_32_59 ();
 sg13cmos5l_fill_2 FILLER_33_0 ();
 sg13cmos5l_fill_2 FILLER_33_109 ();
 sg13cmos5l_fill_2 FILLER_33_133 ();
 sg13cmos5l_decap_8 FILLER_33_140 ();
 sg13cmos5l_fill_1 FILLER_33_147 ();
 sg13cmos5l_fill_1 FILLER_33_162 ();
 sg13cmos5l_decap_4 FILLER_33_182 ();
 sg13cmos5l_fill_2 FILLER_33_193 ();
 sg13cmos5l_fill_1 FILLER_33_195 ();
 sg13cmos5l_fill_2 FILLER_33_201 ();
 sg13cmos5l_fill_1 FILLER_33_203 ();
 sg13cmos5l_decap_4 FILLER_33_251 ();
 sg13cmos5l_fill_2 FILLER_33_29 ();
 sg13cmos5l_decap_8 FILLER_33_317 ();
 sg13cmos5l_decap_8 FILLER_33_324 ();
 sg13cmos5l_decap_4 FILLER_33_331 ();
 sg13cmos5l_fill_1 FILLER_33_335 ();
 sg13cmos5l_decap_4 FILLER_33_351 ();
 sg13cmos5l_fill_1 FILLER_33_355 ();
 sg13cmos5l_fill_1 FILLER_33_373 ();
 sg13cmos5l_decap_4 FILLER_33_39 ();
 sg13cmos5l_decap_8 FILLER_33_395 ();
 sg13cmos5l_fill_2 FILLER_33_402 ();
 sg13cmos5l_fill_2 FILLER_33_51 ();
 sg13cmos5l_fill_1 FILLER_33_61 ();
 sg13cmos5l_decap_4 FILLER_33_74 ();
 sg13cmos5l_fill_1 FILLER_33_78 ();
 sg13cmos5l_decap_8 FILLER_33_88 ();
 sg13cmos5l_fill_1 FILLER_33_95 ();
 sg13cmos5l_fill_2 FILLER_34_131 ();
 sg13cmos5l_decap_8 FILLER_34_137 ();
 sg13cmos5l_fill_2 FILLER_34_144 ();
 sg13cmos5l_fill_1 FILLER_34_146 ();
 sg13cmos5l_fill_1 FILLER_34_15 ();
 sg13cmos5l_decap_4 FILLER_34_154 ();
 sg13cmos5l_fill_2 FILLER_34_158 ();
 sg13cmos5l_fill_1 FILLER_34_164 ();
 sg13cmos5l_decap_8 FILLER_34_177 ();
 sg13cmos5l_fill_2 FILLER_34_184 ();
 sg13cmos5l_decap_8 FILLER_34_203 ();
 sg13cmos5l_fill_1 FILLER_34_217 ();
 sg13cmos5l_fill_1 FILLER_34_330 ();
 sg13cmos5l_fill_2 FILLER_34_341 ();
 sg13cmos5l_fill_1 FILLER_34_403 ();
 sg13cmos5l_fill_1 FILLER_34_51 ();
 sg13cmos5l_decap_4 FILLER_34_64 ();
 sg13cmos5l_fill_1 FILLER_34_68 ();
 sg13cmos5l_fill_1 FILLER_34_7 ();
 sg13cmos5l_decap_4 FILLER_35_0 ();
 sg13cmos5l_decap_8 FILLER_35_101 ();
 sg13cmos5l_decap_4 FILLER_35_108 ();
 sg13cmos5l_fill_1 FILLER_35_112 ();
 sg13cmos5l_decap_8 FILLER_35_13 ();
 sg13cmos5l_fill_2 FILLER_35_136 ();
 sg13cmos5l_fill_1 FILLER_35_138 ();
 sg13cmos5l_fill_1 FILLER_35_156 ();
 sg13cmos5l_decap_8 FILLER_35_169 ();
 sg13cmos5l_decap_4 FILLER_35_176 ();
 sg13cmos5l_fill_2 FILLER_35_180 ();
 sg13cmos5l_decap_8 FILLER_35_191 ();
 sg13cmos5l_fill_1 FILLER_35_198 ();
 sg13cmos5l_fill_1 FILLER_35_209 ();
 sg13cmos5l_decap_4 FILLER_35_234 ();
 sg13cmos5l_fill_2 FILLER_35_238 ();
 sg13cmos5l_fill_2 FILLER_35_254 ();
 sg13cmos5l_fill_1 FILLER_35_256 ();
 sg13cmos5l_fill_1 FILLER_35_292 ();
 sg13cmos5l_fill_2 FILLER_35_300 ();
 sg13cmos5l_fill_2 FILLER_35_336 ();
 sg13cmos5l_fill_1 FILLER_35_338 ();
 sg13cmos5l_decap_4 FILLER_35_353 ();
 sg13cmos5l_fill_2 FILLER_35_357 ();
 sg13cmos5l_decap_8 FILLER_35_363 ();
 sg13cmos5l_decap_8 FILLER_35_370 ();
 sg13cmos5l_fill_2 FILLER_35_377 ();
 sg13cmos5l_fill_1 FILLER_35_379 ();
 sg13cmos5l_fill_1 FILLER_35_384 ();
 sg13cmos5l_decap_8 FILLER_35_396 ();
 sg13cmos5l_fill_1 FILLER_35_403 ();
 sg13cmos5l_fill_1 FILLER_35_51 ();
 sg13cmos5l_decap_4 FILLER_35_75 ();
 sg13cmos5l_fill_2 FILLER_35_79 ();
 sg13cmos5l_fill_2 FILLER_35_95 ();
 sg13cmos5l_fill_1 FILLER_35_97 ();
 sg13cmos5l_decap_8 FILLER_36_0 ();
 sg13cmos5l_fill_1 FILLER_36_133 ();
 sg13cmos5l_decap_8 FILLER_36_14 ();
 sg13cmos5l_fill_2 FILLER_36_151 ();
 sg13cmos5l_fill_1 FILLER_36_153 ();
 sg13cmos5l_fill_2 FILLER_36_172 ();
 sg13cmos5l_fill_1 FILLER_36_204 ();
 sg13cmos5l_fill_2 FILLER_36_21 ();
 sg13cmos5l_fill_2 FILLER_36_210 ();
 sg13cmos5l_fill_2 FILLER_36_219 ();
 sg13cmos5l_fill_1 FILLER_36_234 ();
 sg13cmos5l_fill_1 FILLER_36_266 ();
 sg13cmos5l_fill_2 FILLER_36_302 ();
 sg13cmos5l_decap_8 FILLER_36_307 ();
 sg13cmos5l_decap_8 FILLER_36_314 ();
 sg13cmos5l_decap_8 FILLER_36_321 ();
 sg13cmos5l_fill_1 FILLER_36_328 ();
 sg13cmos5l_decap_8 FILLER_36_338 ();
 sg13cmos5l_fill_1 FILLER_36_345 ();
 sg13cmos5l_decap_8 FILLER_36_351 ();
 sg13cmos5l_decap_8 FILLER_36_363 ();
 sg13cmos5l_decap_8 FILLER_36_370 ();
 sg13cmos5l_fill_2 FILLER_36_388 ();
 sg13cmos5l_decap_4 FILLER_36_398 ();
 sg13cmos5l_fill_2 FILLER_36_402 ();
 sg13cmos5l_fill_2 FILLER_36_66 ();
 sg13cmos5l_decap_8 FILLER_36_7 ();
 sg13cmos5l_fill_1 FILLER_36_81 ();
 sg13cmos5l_fill_1 FILLER_36_93 ();
 sg13cmos5l_decap_8 FILLER_37_104 ();
 sg13cmos5l_decap_4 FILLER_37_111 ();
 sg13cmos5l_fill_1 FILLER_37_115 ();
 sg13cmos5l_decap_8 FILLER_37_136 ();
 sg13cmos5l_decap_8 FILLER_37_148 ();
 sg13cmos5l_decap_8 FILLER_37_155 ();
 sg13cmos5l_decap_8 FILLER_37_162 ();
 sg13cmos5l_decap_4 FILLER_37_169 ();
 sg13cmos5l_fill_2 FILLER_37_173 ();
 sg13cmos5l_decap_8 FILLER_37_179 ();
 sg13cmos5l_fill_1 FILLER_37_186 ();
 sg13cmos5l_fill_2 FILLER_37_245 ();
 sg13cmos5l_decap_8 FILLER_37_287 ();
 sg13cmos5l_fill_2 FILLER_37_294 ();
 sg13cmos5l_decap_4 FILLER_37_320 ();
 sg13cmos5l_fill_2 FILLER_37_324 ();
 sg13cmos5l_fill_2 FILLER_37_349 ();
 sg13cmos5l_fill_2 FILLER_37_359 ();
 sg13cmos5l_fill_1 FILLER_37_361 ();
 sg13cmos5l_fill_1 FILLER_37_369 ();
 sg13cmos5l_fill_2 FILLER_37_380 ();
 sg13cmos5l_fill_2 FILLER_37_402 ();
 sg13cmos5l_fill_2 FILLER_37_54 ();
 sg13cmos5l_decap_8 FILLER_37_97 ();
 sg13cmos5l_fill_2 FILLER_38_0 ();
 sg13cmos5l_decap_8 FILLER_38_118 ();
 sg13cmos5l_fill_1 FILLER_38_125 ();
 sg13cmos5l_fill_2 FILLER_38_131 ();
 sg13cmos5l_decap_4 FILLER_38_146 ();
 sg13cmos5l_decap_8 FILLER_38_15 ();
 sg13cmos5l_fill_2 FILLER_38_160 ();
 sg13cmos5l_fill_1 FILLER_38_166 ();
 sg13cmos5l_fill_2 FILLER_38_172 ();
 sg13cmos5l_fill_1 FILLER_38_174 ();
 sg13cmos5l_decap_4 FILLER_38_189 ();
 sg13cmos5l_fill_2 FILLER_38_196 ();
 sg13cmos5l_fill_1 FILLER_38_219 ();
 sg13cmos5l_fill_2 FILLER_38_247 ();
 sg13cmos5l_fill_2 FILLER_38_270 ();
 sg13cmos5l_decap_4 FILLER_38_285 ();
 sg13cmos5l_fill_2 FILLER_38_307 ();
 sg13cmos5l_fill_1 FILLER_38_309 ();
 sg13cmos5l_decap_4 FILLER_38_352 ();
 sg13cmos5l_fill_2 FILLER_38_356 ();
 sg13cmos5l_fill_2 FILLER_38_368 ();
 sg13cmos5l_fill_1 FILLER_38_370 ();
 sg13cmos5l_fill_2 FILLER_38_383 ();
 sg13cmos5l_decap_8 FILLER_38_394 ();
 sg13cmos5l_fill_2 FILLER_38_401 ();
 sg13cmos5l_fill_1 FILLER_38_403 ();
 sg13cmos5l_fill_2 FILLER_38_49 ();
 sg13cmos5l_fill_1 FILLER_38_51 ();
 sg13cmos5l_fill_2 FILLER_38_76 ();
 sg13cmos5l_fill_1 FILLER_38_78 ();
 sg13cmos5l_fill_2 FILLER_38_89 ();
 sg13cmos5l_fill_1 FILLER_39_117 ();
 sg13cmos5l_fill_1 FILLER_39_132 ();
 sg13cmos5l_fill_2 FILLER_39_171 ();
 sg13cmos5l_decap_4 FILLER_39_196 ();
 sg13cmos5l_fill_1 FILLER_39_200 ();
 sg13cmos5l_decap_8 FILLER_39_231 ();
 sg13cmos5l_fill_1 FILLER_39_275 ();
 sg13cmos5l_decap_4 FILLER_39_293 ();
 sg13cmos5l_fill_2 FILLER_39_31 ();
 sg13cmos5l_decap_8 FILLER_39_319 ();
 sg13cmos5l_decap_4 FILLER_39_326 ();
 sg13cmos5l_decap_8 FILLER_39_346 ();
 sg13cmos5l_decap_8 FILLER_39_353 ();
 sg13cmos5l_fill_2 FILLER_39_360 ();
 sg13cmos5l_decap_4 FILLER_39_378 ();
 sg13cmos5l_fill_2 FILLER_39_401 ();
 sg13cmos5l_fill_1 FILLER_39_403 ();
 sg13cmos5l_decap_4 FILLER_39_49 ();
 sg13cmos5l_fill_1 FILLER_39_53 ();
 sg13cmos5l_fill_1 FILLER_39_62 ();
 sg13cmos5l_fill_1 FILLER_39_78 ();
 sg13cmos5l_fill_1 FILLER_39_89 ();
 sg13cmos5l_decap_8 FILLER_3_0 ();
 sg13cmos5l_fill_1 FILLER_3_110 ();
 sg13cmos5l_decap_8 FILLER_3_14 ();
 sg13cmos5l_fill_2 FILLER_3_142 ();
 sg13cmos5l_fill_1 FILLER_3_186 ();
 sg13cmos5l_fill_2 FILLER_3_21 ();
 sg13cmos5l_fill_1 FILLER_3_233 ();
 sg13cmos5l_fill_2 FILLER_3_286 ();
 sg13cmos5l_fill_2 FILLER_3_354 ();
 sg13cmos5l_decap_8 FILLER_3_386 ();
 sg13cmos5l_decap_8 FILLER_3_393 ();
 sg13cmos5l_decap_4 FILLER_3_400 ();
 sg13cmos5l_decap_4 FILLER_3_48 ();
 sg13cmos5l_decap_4 FILLER_3_55 ();
 sg13cmos5l_fill_2 FILLER_3_59 ();
 sg13cmos5l_decap_4 FILLER_3_64 ();
 sg13cmos5l_fill_1 FILLER_3_68 ();
 sg13cmos5l_decap_8 FILLER_3_7 ();
 sg13cmos5l_fill_1 FILLER_3_80 ();
 sg13cmos5l_fill_1 FILLER_3_92 ();
 sg13cmos5l_fill_1 FILLER_3_96 ();
 sg13cmos5l_decap_4 FILLER_40_118 ();
 sg13cmos5l_fill_1 FILLER_40_122 ();
 sg13cmos5l_decap_8 FILLER_40_132 ();
 sg13cmos5l_fill_1 FILLER_40_139 ();
 sg13cmos5l_fill_1 FILLER_40_161 ();
 sg13cmos5l_decap_8 FILLER_40_170 ();
 sg13cmos5l_decap_4 FILLER_40_177 ();
 sg13cmos5l_fill_2 FILLER_40_181 ();
 sg13cmos5l_fill_2 FILLER_40_187 ();
 sg13cmos5l_fill_1 FILLER_40_216 ();
 sg13cmos5l_decap_4 FILLER_40_229 ();
 sg13cmos5l_fill_1 FILLER_40_233 ();
 sg13cmos5l_decap_8 FILLER_40_238 ();
 sg13cmos5l_fill_1 FILLER_40_245 ();
 sg13cmos5l_fill_2 FILLER_40_257 ();
 sg13cmos5l_fill_2 FILLER_40_27 ();
 sg13cmos5l_fill_2 FILLER_40_274 ();
 sg13cmos5l_decap_8 FILLER_40_285 ();
 sg13cmos5l_fill_1 FILLER_40_292 ();
 sg13cmos5l_fill_1 FILLER_40_298 ();
 sg13cmos5l_decap_4 FILLER_40_321 ();
 sg13cmos5l_fill_1 FILLER_40_325 ();
 sg13cmos5l_decap_8 FILLER_40_356 ();
 sg13cmos5l_fill_2 FILLER_40_363 ();
 sg13cmos5l_fill_2 FILLER_40_382 ();
 sg13cmos5l_fill_1 FILLER_40_384 ();
 sg13cmos5l_fill_1 FILLER_40_403 ();
 sg13cmos5l_decap_4 FILLER_40_60 ();
 sg13cmos5l_decap_4 FILLER_40_72 ();
 sg13cmos5l_fill_1 FILLER_40_76 ();
 sg13cmos5l_decap_4 FILLER_41_101 ();
 sg13cmos5l_fill_1 FILLER_41_105 ();
 sg13cmos5l_decap_8 FILLER_41_195 ();
 sg13cmos5l_decap_8 FILLER_41_202 ();
 sg13cmos5l_fill_2 FILLER_41_209 ();
 sg13cmos5l_fill_1 FILLER_41_211 ();
 sg13cmos5l_fill_2 FILLER_41_217 ();
 sg13cmos5l_fill_1 FILLER_41_219 ();
 sg13cmos5l_fill_1 FILLER_41_247 ();
 sg13cmos5l_decap_8 FILLER_41_253 ();
 sg13cmos5l_decap_4 FILLER_41_264 ();
 sg13cmos5l_fill_2 FILLER_41_268 ();
 sg13cmos5l_fill_1 FILLER_41_300 ();
 sg13cmos5l_decap_4 FILLER_41_348 ();
 sg13cmos5l_fill_1 FILLER_41_352 ();
 sg13cmos5l_fill_1 FILLER_41_364 ();
 sg13cmos5l_fill_2 FILLER_41_377 ();
 sg13cmos5l_fill_1 FILLER_41_379 ();
 sg13cmos5l_fill_2 FILLER_41_385 ();
 sg13cmos5l_decap_4 FILLER_41_398 ();
 sg13cmos5l_fill_2 FILLER_41_402 ();
 sg13cmos5l_decap_8 FILLER_41_94 ();
 sg13cmos5l_fill_1 FILLER_42_105 ();
 sg13cmos5l_fill_1 FILLER_42_203 ();
 sg13cmos5l_fill_2 FILLER_42_239 ();
 sg13cmos5l_decap_8 FILLER_42_262 ();
 sg13cmos5l_decap_8 FILLER_42_269 ();
 sg13cmos5l_fill_1 FILLER_42_279 ();
 sg13cmos5l_decap_8 FILLER_42_292 ();
 sg13cmos5l_fill_2 FILLER_42_331 ();
 sg13cmos5l_decap_4 FILLER_42_362 ();
 sg13cmos5l_fill_2 FILLER_42_379 ();
 sg13cmos5l_decap_8 FILLER_42_389 ();
 sg13cmos5l_decap_8 FILLER_42_396 ();
 sg13cmos5l_fill_1 FILLER_42_403 ();
 sg13cmos5l_fill_1 FILLER_42_54 ();
 sg13cmos5l_decap_8 FILLER_42_75 ();
 sg13cmos5l_fill_1 FILLER_42_82 ();
 sg13cmos5l_decap_8 FILLER_42_91 ();
 sg13cmos5l_decap_8 FILLER_42_98 ();
 sg13cmos5l_fill_1 FILLER_43_0 ();
 sg13cmos5l_decap_8 FILLER_43_104 ();
 sg13cmos5l_decap_4 FILLER_43_111 ();
 sg13cmos5l_fill_1 FILLER_43_115 ();
 sg13cmos5l_decap_4 FILLER_43_119 ();
 sg13cmos5l_fill_2 FILLER_43_12 ();
 sg13cmos5l_fill_1 FILLER_43_123 ();
 sg13cmos5l_fill_1 FILLER_43_131 ();
 sg13cmos5l_fill_1 FILLER_43_138 ();
 sg13cmos5l_fill_2 FILLER_43_152 ();
 sg13cmos5l_fill_1 FILLER_43_154 ();
 sg13cmos5l_decap_8 FILLER_43_172 ();
 sg13cmos5l_fill_1 FILLER_43_179 ();
 sg13cmos5l_decap_4 FILLER_43_201 ();
 sg13cmos5l_fill_2 FILLER_43_205 ();
 sg13cmos5l_fill_2 FILLER_43_212 ();
 sg13cmos5l_fill_2 FILLER_43_248 ();
 sg13cmos5l_decap_4 FILLER_43_262 ();
 sg13cmos5l_fill_2 FILLER_43_266 ();
 sg13cmos5l_fill_1 FILLER_43_273 ();
 sg13cmos5l_fill_2 FILLER_43_339 ();
 sg13cmos5l_fill_1 FILLER_43_341 ();
 sg13cmos5l_decap_8 FILLER_43_347 ();
 sg13cmos5l_fill_2 FILLER_43_354 ();
 sg13cmos5l_fill_1 FILLER_43_356 ();
 sg13cmos5l_decap_4 FILLER_43_362 ();
 sg13cmos5l_decap_8 FILLER_43_372 ();
 sg13cmos5l_decap_8 FILLER_43_379 ();
 sg13cmos5l_decap_8 FILLER_43_386 ();
 sg13cmos5l_decap_8 FILLER_43_393 ();
 sg13cmos5l_decap_4 FILLER_43_400 ();
 sg13cmos5l_fill_1 FILLER_43_49 ();
 sg13cmos5l_decap_4 FILLER_43_71 ();
 sg13cmos5l_fill_2 FILLER_43_81 ();
 sg13cmos5l_fill_1 FILLER_43_83 ();
 sg13cmos5l_decap_4 FILLER_44_0 ();
 sg13cmos5l_fill_1 FILLER_44_13 ();
 sg13cmos5l_fill_1 FILLER_44_131 ();
 sg13cmos5l_fill_1 FILLER_44_159 ();
 sg13cmos5l_decap_4 FILLER_44_196 ();
 sg13cmos5l_fill_2 FILLER_44_207 ();
 sg13cmos5l_fill_2 FILLER_44_249 ();
 sg13cmos5l_fill_1 FILLER_44_251 ();
 sg13cmos5l_fill_2 FILLER_44_340 ();
 sg13cmos5l_decap_8 FILLER_44_357 ();
 sg13cmos5l_decap_8 FILLER_44_364 ();
 sg13cmos5l_decap_8 FILLER_44_371 ();
 sg13cmos5l_decap_8 FILLER_44_378 ();
 sg13cmos5l_decap_8 FILLER_44_385 ();
 sg13cmos5l_decap_8 FILLER_44_392 ();
 sg13cmos5l_decap_4 FILLER_44_399 ();
 sg13cmos5l_fill_1 FILLER_44_4 ();
 sg13cmos5l_fill_1 FILLER_44_403 ();
 sg13cmos5l_fill_1 FILLER_44_49 ();
 sg13cmos5l_fill_2 FILLER_44_61 ();
 sg13cmos5l_decap_4 FILLER_44_69 ();
 sg13cmos5l_fill_1 FILLER_44_73 ();
 sg13cmos5l_fill_1 FILLER_45_101 ();
 sg13cmos5l_decap_4 FILLER_45_107 ();
 sg13cmos5l_fill_1 FILLER_45_111 ();
 sg13cmos5l_fill_2 FILLER_45_251 ();
 sg13cmos5l_fill_2 FILLER_45_271 ();
 sg13cmos5l_decap_4 FILLER_45_278 ();
 sg13cmos5l_decap_4 FILLER_45_303 ();
 sg13cmos5l_fill_1 FILLER_45_313 ();
 sg13cmos5l_fill_1 FILLER_45_330 ();
 sg13cmos5l_decap_8 FILLER_45_356 ();
 sg13cmos5l_decap_8 FILLER_45_363 ();
 sg13cmos5l_decap_8 FILLER_45_370 ();
 sg13cmos5l_decap_8 FILLER_45_377 ();
 sg13cmos5l_decap_8 FILLER_45_384 ();
 sg13cmos5l_decap_8 FILLER_45_391 ();
 sg13cmos5l_decap_4 FILLER_45_398 ();
 sg13cmos5l_fill_2 FILLER_45_402 ();
 sg13cmos5l_fill_2 FILLER_45_57 ();
 sg13cmos5l_decap_4 FILLER_45_67 ();
 sg13cmos5l_fill_2 FILLER_45_76 ();
 sg13cmos5l_decap_4 FILLER_45_83 ();
 sg13cmos5l_fill_1 FILLER_45_87 ();
 sg13cmos5l_decap_4 FILLER_45_97 ();
 sg13cmos5l_decap_8 FILLER_46_0 ();
 sg13cmos5l_fill_2 FILLER_46_11 ();
 sg13cmos5l_decap_8 FILLER_46_121 ();
 sg13cmos5l_decap_8 FILLER_46_128 ();
 sg13cmos5l_fill_2 FILLER_46_139 ();
 sg13cmos5l_decap_8 FILLER_46_147 ();
 sg13cmos5l_fill_2 FILLER_46_154 ();
 sg13cmos5l_decap_8 FILLER_46_161 ();
 sg13cmos5l_fill_1 FILLER_46_190 ();
 sg13cmos5l_decap_4 FILLER_46_215 ();
 sg13cmos5l_fill_1 FILLER_46_219 ();
 sg13cmos5l_decap_4 FILLER_46_227 ();
 sg13cmos5l_decap_4 FILLER_46_234 ();
 sg13cmos5l_fill_1 FILLER_46_275 ();
 sg13cmos5l_fill_1 FILLER_46_338 ();
 sg13cmos5l_decap_8 FILLER_46_357 ();
 sg13cmos5l_decap_8 FILLER_46_364 ();
 sg13cmos5l_decap_8 FILLER_46_371 ();
 sg13cmos5l_decap_8 FILLER_46_378 ();
 sg13cmos5l_decap_8 FILLER_46_385 ();
 sg13cmos5l_decap_8 FILLER_46_392 ();
 sg13cmos5l_decap_4 FILLER_46_399 ();
 sg13cmos5l_fill_1 FILLER_46_403 ();
 sg13cmos5l_fill_1 FILLER_46_44 ();
 sg13cmos5l_decap_4 FILLER_46_7 ();
 sg13cmos5l_decap_4 FILLER_46_80 ();
 sg13cmos5l_fill_2 FILLER_46_84 ();
 sg13cmos5l_fill_2 FILLER_47_172 ();
 sg13cmos5l_fill_1 FILLER_47_174 ();
 sg13cmos5l_fill_2 FILLER_47_210 ();
 sg13cmos5l_decap_8 FILLER_47_228 ();
 sg13cmos5l_fill_2 FILLER_47_246 ();
 sg13cmos5l_decap_4 FILLER_47_256 ();
 sg13cmos5l_decap_4 FILLER_47_293 ();
 sg13cmos5l_fill_1 FILLER_47_297 ();
 sg13cmos5l_fill_2 FILLER_47_311 ();
 sg13cmos5l_decap_4 FILLER_47_322 ();
 sg13cmos5l_fill_1 FILLER_47_326 ();
 sg13cmos5l_fill_1 FILLER_47_338 ();
 sg13cmos5l_decap_8 FILLER_47_377 ();
 sg13cmos5l_decap_8 FILLER_47_384 ();
 sg13cmos5l_decap_8 FILLER_47_391 ();
 sg13cmos5l_decap_4 FILLER_47_398 ();
 sg13cmos5l_fill_2 FILLER_47_402 ();
 sg13cmos5l_fill_1 FILLER_47_48 ();
 sg13cmos5l_fill_2 FILLER_47_62 ();
 sg13cmos5l_fill_2 FILLER_47_84 ();
 sg13cmos5l_fill_2 FILLER_48_108 ();
 sg13cmos5l_fill_1 FILLER_48_209 ();
 sg13cmos5l_fill_1 FILLER_48_215 ();
 sg13cmos5l_fill_1 FILLER_48_243 ();
 sg13cmos5l_fill_2 FILLER_48_271 ();
 sg13cmos5l_decap_8 FILLER_48_356 ();
 sg13cmos5l_decap_8 FILLER_48_363 ();
 sg13cmos5l_decap_8 FILLER_48_370 ();
 sg13cmos5l_decap_8 FILLER_48_377 ();
 sg13cmos5l_decap_8 FILLER_48_384 ();
 sg13cmos5l_decap_8 FILLER_48_391 ();
 sg13cmos5l_decap_4 FILLER_48_398 ();
 sg13cmos5l_fill_2 FILLER_48_402 ();
 sg13cmos5l_fill_2 FILLER_48_73 ();
 sg13cmos5l_fill_1 FILLER_48_75 ();
 sg13cmos5l_decap_4 FILLER_49_0 ();
 sg13cmos5l_fill_1 FILLER_49_102 ();
 sg13cmos5l_fill_2 FILLER_49_13 ();
 sg13cmos5l_decap_4 FILLER_49_134 ();
 sg13cmos5l_fill_1 FILLER_49_138 ();
 sg13cmos5l_decap_8 FILLER_49_142 ();
 sg13cmos5l_decap_4 FILLER_49_149 ();
 sg13cmos5l_fill_2 FILLER_49_153 ();
 sg13cmos5l_decap_8 FILLER_49_169 ();
 sg13cmos5l_fill_2 FILLER_49_176 ();
 sg13cmos5l_fill_1 FILLER_49_181 ();
 sg13cmos5l_decap_8 FILLER_49_190 ();
 sg13cmos5l_decap_8 FILLER_49_197 ();
 sg13cmos5l_fill_1 FILLER_49_204 ();
 sg13cmos5l_fill_2 FILLER_49_210 ();
 sg13cmos5l_decap_8 FILLER_49_227 ();
 sg13cmos5l_fill_1 FILLER_49_234 ();
 sg13cmos5l_decap_8 FILLER_49_247 ();
 sg13cmos5l_fill_2 FILLER_49_254 ();
 sg13cmos5l_decap_4 FILLER_49_268 ();
 sg13cmos5l_fill_1 FILLER_49_272 ();
 sg13cmos5l_decap_8 FILLER_49_293 ();
 sg13cmos5l_decap_4 FILLER_49_300 ();
 sg13cmos5l_fill_1 FILLER_49_304 ();
 sg13cmos5l_decap_4 FILLER_49_310 ();
 sg13cmos5l_fill_1 FILLER_49_314 ();
 sg13cmos5l_decap_8 FILLER_49_323 ();
 sg13cmos5l_decap_8 FILLER_49_330 ();
 sg13cmos5l_decap_8 FILLER_49_341 ();
 sg13cmos5l_decap_8 FILLER_49_348 ();
 sg13cmos5l_decap_8 FILLER_49_355 ();
 sg13cmos5l_decap_8 FILLER_49_362 ();
 sg13cmos5l_decap_8 FILLER_49_369 ();
 sg13cmos5l_decap_8 FILLER_49_376 ();
 sg13cmos5l_decap_8 FILLER_49_383 ();
 sg13cmos5l_decap_8 FILLER_49_390 ();
 sg13cmos5l_decap_8 FILLER_49_397 ();
 sg13cmos5l_fill_1 FILLER_49_4 ();
 sg13cmos5l_decap_8 FILLER_49_67 ();
 sg13cmos5l_fill_2 FILLER_49_74 ();
 sg13cmos5l_decap_8 FILLER_49_80 ();
 sg13cmos5l_decap_8 FILLER_49_87 ();
 sg13cmos5l_fill_2 FILLER_49_94 ();
 sg13cmos5l_fill_1 FILLER_49_96 ();
 sg13cmos5l_fill_1 FILLER_4_105 ();
 sg13cmos5l_fill_1 FILLER_4_116 ();
 sg13cmos5l_decap_8 FILLER_4_211 ();
 sg13cmos5l_decap_8 FILLER_4_218 ();
 sg13cmos5l_decap_8 FILLER_4_225 ();
 sg13cmos5l_decap_8 FILLER_4_232 ();
 sg13cmos5l_decap_8 FILLER_4_239 ();
 sg13cmos5l_decap_8 FILLER_4_246 ();
 sg13cmos5l_decap_8 FILLER_4_253 ();
 sg13cmos5l_decap_8 FILLER_4_260 ();
 sg13cmos5l_decap_8 FILLER_4_267 ();
 sg13cmos5l_decap_8 FILLER_4_274 ();
 sg13cmos5l_decap_8 FILLER_4_281 ();
 sg13cmos5l_decap_8 FILLER_4_288 ();
 sg13cmos5l_decap_8 FILLER_4_295 ();
 sg13cmos5l_decap_8 FILLER_4_302 ();
 sg13cmos5l_decap_8 FILLER_4_309 ();
 sg13cmos5l_decap_8 FILLER_4_316 ();
 sg13cmos5l_decap_8 FILLER_4_323 ();
 sg13cmos5l_decap_8 FILLER_4_330 ();
 sg13cmos5l_decap_8 FILLER_4_337 ();
 sg13cmos5l_decap_8 FILLER_4_344 ();
 sg13cmos5l_decap_8 FILLER_4_35 ();
 sg13cmos5l_decap_8 FILLER_4_351 ();
 sg13cmos5l_decap_8 FILLER_4_358 ();
 sg13cmos5l_decap_8 FILLER_4_365 ();
 sg13cmos5l_decap_8 FILLER_4_372 ();
 sg13cmos5l_decap_8 FILLER_4_379 ();
 sg13cmos5l_decap_8 FILLER_4_386 ();
 sg13cmos5l_decap_8 FILLER_4_393 ();
 sg13cmos5l_fill_1 FILLER_4_4 ();
 sg13cmos5l_decap_4 FILLER_4_400 ();
 sg13cmos5l_fill_1 FILLER_4_42 ();
 sg13cmos5l_fill_2 FILLER_4_48 ();
 sg13cmos5l_fill_1 FILLER_4_77 ();
 sg13cmos5l_fill_2 FILLER_5_0 ();
 sg13cmos5l_fill_2 FILLER_5_109 ();
 sg13cmos5l_fill_1 FILLER_5_13 ();
 sg13cmos5l_fill_1 FILLER_5_2 ();
 sg13cmos5l_decap_4 FILLER_5_212 ();
 sg13cmos5l_fill_2 FILLER_5_224 ();
 sg13cmos5l_fill_1 FILLER_5_226 ();
 sg13cmos5l_decap_8 FILLER_5_235 ();
 sg13cmos5l_decap_8 FILLER_5_242 ();
 sg13cmos5l_decap_8 FILLER_5_249 ();
 sg13cmos5l_decap_8 FILLER_5_256 ();
 sg13cmos5l_decap_8 FILLER_5_263 ();
 sg13cmos5l_fill_2 FILLER_5_27 ();
 sg13cmos5l_decap_8 FILLER_5_270 ();
 sg13cmos5l_decap_8 FILLER_5_277 ();
 sg13cmos5l_decap_4 FILLER_5_284 ();
 sg13cmos5l_fill_1 FILLER_5_288 ();
 sg13cmos5l_fill_1 FILLER_5_29 ();
 sg13cmos5l_decap_4 FILLER_5_397 ();
 sg13cmos5l_fill_1 FILLER_5_60 ();
 sg13cmos5l_fill_1 FILLER_5_86 ();
 sg13cmos5l_fill_2 FILLER_6_129 ();
 sg13cmos5l_fill_2 FILLER_6_193 ();
 sg13cmos5l_fill_1 FILLER_6_204 ();
 sg13cmos5l_fill_2 FILLER_6_212 ();
 sg13cmos5l_fill_1 FILLER_6_214 ();
 sg13cmos5l_decap_8 FILLER_6_231 ();
 sg13cmos5l_decap_8 FILLER_6_238 ();
 sg13cmos5l_decap_8 FILLER_6_245 ();
 sg13cmos5l_decap_8 FILLER_6_252 ();
 sg13cmos5l_decap_8 FILLER_6_259 ();
 sg13cmos5l_decap_8 FILLER_6_266 ();
 sg13cmos5l_decap_8 FILLER_6_273 ();
 sg13cmos5l_fill_2 FILLER_6_280 ();
 sg13cmos5l_fill_1 FILLER_6_343 ();
 sg13cmos5l_decap_4 FILLER_6_377 ();
 sg13cmos5l_fill_1 FILLER_6_381 ();
 sg13cmos5l_decap_8 FILLER_6_395 ();
 sg13cmos5l_fill_2 FILLER_6_402 ();
 sg13cmos5l_fill_1 FILLER_6_45 ();
 sg13cmos5l_decap_4 FILLER_7_0 ();
 sg13cmos5l_fill_2 FILLER_7_16 ();
 sg13cmos5l_fill_1 FILLER_7_18 ();
 sg13cmos5l_decap_8 FILLER_7_210 ();
 sg13cmos5l_decap_8 FILLER_7_217 ();
 sg13cmos5l_decap_8 FILLER_7_224 ();
 sg13cmos5l_decap_4 FILLER_7_231 ();
 sg13cmos5l_fill_1 FILLER_7_235 ();
 sg13cmos5l_fill_2 FILLER_7_330 ();
 sg13cmos5l_decap_4 FILLER_7_399 ();
 sg13cmos5l_fill_1 FILLER_7_403 ();
 sg13cmos5l_decap_4 FILLER_8_10 ();
 sg13cmos5l_fill_2 FILLER_8_155 ();
 sg13cmos5l_decap_8 FILLER_8_210 ();
 sg13cmos5l_decap_4 FILLER_8_217 ();
 sg13cmos5l_decap_8 FILLER_8_225 ();
 sg13cmos5l_decap_4 FILLER_8_304 ();
 sg13cmos5l_fill_1 FILLER_8_308 ();
 sg13cmos5l_fill_2 FILLER_8_324 ();
 sg13cmos5l_fill_1 FILLER_8_353 ();
 sg13cmos5l_fill_2 FILLER_8_383 ();
 sg13cmos5l_decap_8 FILLER_8_397 ();
 sg13cmos5l_fill_2 FILLER_8_4 ();
 sg13cmos5l_fill_1 FILLER_8_6 ();
 sg13cmos5l_fill_1 FILLER_8_73 ();
 sg13cmos5l_fill_1 FILLER_9_173 ();
 sg13cmos5l_decap_8 FILLER_9_212 ();
 sg13cmos5l_fill_1 FILLER_9_219 ();
 sg13cmos5l_decap_8 FILLER_9_224 ();
 sg13cmos5l_decap_8 FILLER_9_231 ();
 sg13cmos5l_fill_2 FILLER_9_238 ();
 sg13cmos5l_fill_1 FILLER_9_240 ();
 sg13cmos5l_decap_8 FILLER_9_254 ();
 sg13cmos5l_fill_2 FILLER_9_261 ();
 sg13cmos5l_decap_8 FILLER_9_271 ();
 sg13cmos5l_fill_2 FILLER_9_278 ();
 sg13cmos5l_fill_1 FILLER_9_280 ();
 sg13cmos5l_fill_1 FILLER_9_290 ();
 sg13cmos5l_decap_8 FILLER_9_297 ();
 sg13cmos5l_decap_8 FILLER_9_304 ();
 sg13cmos5l_decap_8 FILLER_9_326 ();
 sg13cmos5l_fill_2 FILLER_9_333 ();
 sg13cmos5l_fill_2 FILLER_9_347 ();
 sg13cmos5l_fill_1 FILLER_9_380 ();
 sg13cmos5l_decap_4 FILLER_9_398 ();
 sg13cmos5l_fill_1 FILLER_9_4 ();
 sg13cmos5l_fill_2 FILLER_9_402 ();
 sg13cmos5l_fill_2 FILLER_9_42 ();
 sg13cmos5l_buf_8 \clkbuf_0_u_dll/controller_ref_clk  (.A(\u_dll/controller_ref_clk ),
    .X(\clknet_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_0_u_dll/controller_ring_clk  (.A(\u_dll/controller_ring_clk ),
    .X(\clknet_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_1_0_0_u_dll/controller_ref_clk  (.A(\clknet_0_u_dll/controller_ref_clk ),
    .X(\clknet_1_0_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_1_0_0_u_dll/controller_ring_clk  (.A(\clknet_0_u_dll/controller_ring_clk ),
    .X(\clknet_1_0_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_1_1_0_u_dll/controller_ref_clk  (.A(\clknet_0_u_dll/controller_ref_clk ),
    .X(\clknet_1_1_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_1_1_0_u_dll/controller_ring_clk  (.A(\clknet_0_u_dll/controller_ring_clk ),
    .X(\clknet_1_1_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_2_0_0_u_dll/controller_ref_clk  (.A(\clknet_1_0_0_u_dll/controller_ref_clk ),
    .X(\clknet_2_0_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_2_1_0_u_dll/controller_ref_clk  (.A(\clknet_1_0_0_u_dll/controller_ref_clk ),
    .X(\clknet_2_1_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_2_2_0_u_dll/controller_ref_clk  (.A(\clknet_1_1_0_u_dll/controller_ref_clk ),
    .X(\clknet_2_2_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_2_3_0_u_dll/controller_ref_clk  (.A(\clknet_1_1_0_u_dll/controller_ref_clk ),
    .X(\clknet_2_3_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_3_0_0_u_dll/controller_ring_clk  (.A(\clknet_1_0_0_u_dll/controller_ring_clk ),
    .X(\clknet_3_0_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_3_1_0_u_dll/controller_ring_clk  (.A(\clknet_1_0_0_u_dll/controller_ring_clk ),
    .X(\clknet_3_1_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_3_2_0_u_dll/controller_ring_clk  (.A(\clknet_1_0_0_u_dll/controller_ring_clk ),
    .X(\clknet_3_2_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_3_3_0_u_dll/controller_ring_clk  (.A(\clknet_1_0_0_u_dll/controller_ring_clk ),
    .X(\clknet_3_3_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_3_4_0_u_dll/controller_ring_clk  (.A(\clknet_1_1_0_u_dll/controller_ring_clk ),
    .X(\clknet_3_4_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_3_5_0_u_dll/controller_ring_clk  (.A(\clknet_1_1_0_u_dll/controller_ring_clk ),
    .X(\clknet_3_5_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_3_6_0_u_dll/controller_ring_clk  (.A(\clknet_1_1_0_u_dll/controller_ring_clk ),
    .X(\clknet_3_6_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_3_7_0_u_dll/controller_ring_clk  (.A(\clknet_1_1_0_u_dll/controller_ring_clk ),
    .X(\clknet_3_7_0_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_0_0_u_dll/controller_ref_clk  (.A(\clknet_2_0_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_0_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_0__f_u_dll/controller_ring_clk  (.A(\clknet_3_0_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_0__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_10_0_u_dll/controller_ref_clk  (.A(\clknet_2_2_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_10_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_10__f_u_dll/controller_ring_clk  (.A(\clknet_3_5_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_10__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_11_0_u_dll/controller_ref_clk  (.A(\clknet_2_2_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_11_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_11__f_u_dll/controller_ring_clk  (.A(\clknet_3_5_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_11__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_12_0_u_dll/controller_ref_clk  (.A(\clknet_2_3_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_12_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_12__f_u_dll/controller_ring_clk  (.A(\clknet_3_6_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_12__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_13_0_u_dll/controller_ref_clk  (.A(\clknet_2_3_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_13_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_13__f_u_dll/controller_ring_clk  (.A(\clknet_3_6_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_13__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_14_0_u_dll/controller_ref_clk  (.A(\clknet_2_3_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_14_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_14__f_u_dll/controller_ring_clk  (.A(\clknet_3_7_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_14__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_15_0_u_dll/controller_ref_clk  (.A(\clknet_2_3_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_15_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_15__f_u_dll/controller_ring_clk  (.A(\clknet_3_7_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_15__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_1_0_u_dll/controller_ref_clk  (.A(\clknet_2_0_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_1_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_1__f_u_dll/controller_ring_clk  (.A(\clknet_3_0_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_1__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_2_0_u_dll/controller_ref_clk  (.A(\clknet_2_0_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_2_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_2__f_u_dll/controller_ring_clk  (.A(\clknet_3_1_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_2__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_3_0_u_dll/controller_ref_clk  (.A(\clknet_2_0_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_3_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_3__f_u_dll/controller_ring_clk  (.A(\clknet_3_1_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_3__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_4_0_u_dll/controller_ref_clk  (.A(\clknet_2_1_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_4_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_4__f_u_dll/controller_ring_clk  (.A(\clknet_3_2_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_4__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_5_0_u_dll/controller_ref_clk  (.A(\clknet_2_1_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_5_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_5__f_u_dll/controller_ring_clk  (.A(\clknet_3_2_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_5__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_6_0_u_dll/controller_ref_clk  (.A(\clknet_2_1_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_6_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_6__f_u_dll/controller_ring_clk  (.A(\clknet_3_3_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_6__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_7_0_u_dll/controller_ref_clk  (.A(\clknet_2_1_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_7_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_7__f_u_dll/controller_ring_clk  (.A(\clknet_3_3_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_7__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_8_0_u_dll/controller_ref_clk  (.A(\clknet_2_2_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_8_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_8__f_u_dll/controller_ring_clk  (.A(\clknet_3_4_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_8__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_9_0_u_dll/controller_ref_clk  (.A(\clknet_2_2_0_u_dll/controller_ref_clk ),
    .X(\clknet_4_9_0_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_4_9__f_u_dll/controller_ring_clk  (.A(\clknet_3_4_0_u_dll/controller_ring_clk ),
    .X(\clknet_4_9__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_0__f_u_dll/controller_ref_clk  (.A(\clknet_4_0_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_0__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_10__f_u_dll/controller_ref_clk  (.A(\clknet_4_5_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_10__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_11__f_u_dll/controller_ref_clk  (.A(\clknet_4_5_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_11__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_12__f_u_dll/controller_ref_clk  (.A(\clknet_4_6_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_12__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_13__f_u_dll/controller_ref_clk  (.A(\clknet_4_6_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_13__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_14__f_u_dll/controller_ref_clk  (.A(\clknet_4_7_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_14__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_15__f_u_dll/controller_ref_clk  (.A(\clknet_4_7_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_15__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_16__f_u_dll/controller_ref_clk  (.A(\clknet_4_8_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_16__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_17__f_u_dll/controller_ref_clk  (.A(\clknet_4_8_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_17__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_18__f_u_dll/controller_ref_clk  (.A(\clknet_4_9_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_18__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_19__f_u_dll/controller_ref_clk  (.A(\clknet_4_9_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_19__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_1__f_u_dll/controller_ref_clk  (.A(\clknet_4_0_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_1__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_20__f_u_dll/controller_ref_clk  (.A(\clknet_4_10_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_20__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_21__f_u_dll/controller_ref_clk  (.A(\clknet_4_10_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_21__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_22__f_u_dll/controller_ref_clk  (.A(\clknet_4_11_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_22__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_23__f_u_dll/controller_ref_clk  (.A(\clknet_4_11_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_23__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_24__f_u_dll/controller_ref_clk  (.A(\clknet_4_12_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_24__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_25__f_u_dll/controller_ref_clk  (.A(\clknet_4_12_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_25__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_26__f_u_dll/controller_ref_clk  (.A(\clknet_4_13_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_26__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_27__f_u_dll/controller_ref_clk  (.A(\clknet_4_13_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_27__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_28__f_u_dll/controller_ref_clk  (.A(\clknet_4_14_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_28__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_29__f_u_dll/controller_ref_clk  (.A(\clknet_4_14_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_29__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_2__f_u_dll/controller_ref_clk  (.A(\clknet_4_1_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_2__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_30__f_u_dll/controller_ref_clk  (.A(\clknet_4_15_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_30__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_31__f_u_dll/controller_ref_clk  (.A(\clknet_4_15_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_31__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_3__f_u_dll/controller_ref_clk  (.A(\clknet_4_1_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_3__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_4__f_u_dll/controller_ref_clk  (.A(\clknet_4_2_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_4__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_5__f_u_dll/controller_ref_clk  (.A(\clknet_4_2_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_5__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_6__f_u_dll/controller_ref_clk  (.A(\clknet_4_3_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_6__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_7__f_u_dll/controller_ref_clk  (.A(\clknet_4_3_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_7__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_8__f_u_dll/controller_ref_clk  (.A(\clknet_4_4_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_8__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_8 \clkbuf_5_9__f_u_dll/controller_ref_clk  (.A(\clknet_4_4_0_u_dll/controller_ref_clk ),
    .X(\clknet_5_9__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_inv_1 clkload0 (.A(\clknet_5_1__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_inv_1 clkload1 (.A(\clknet_5_5__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_inv_1 clkload2 (.A(\clknet_5_9__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_inv_1 clkload3 (.A(\clknet_5_13__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_inv_1 clkload4 (.A(\clknet_5_17__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_inv_1 clkload5 (.A(\clknet_5_21__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_inv_1 clkload6 (.A(\clknet_5_25__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_inv_1 clkload7 (.A(\clknet_4_7__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_inv_1 clkload8 (.A(\clknet_4_15__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_tielo heichips26_multimode_dll_small (.L_LO(net));
 sg13cmos5l_tielo heichips26_multimode_dll_small_101 (.L_LO(net101));
 sg13cmos5l_tielo heichips26_multimode_dll_small_102 (.L_LO(net102));
 sg13cmos5l_tielo heichips26_multimode_dll_small_103 (.L_LO(net103));
 sg13cmos5l_tielo heichips26_multimode_dll_small_104 (.L_LO(net104));
 sg13cmos5l_tielo heichips26_multimode_dll_small_105 (.L_LO(net105));
 sg13cmos5l_tielo heichips26_multimode_dll_small_106 (.L_LO(net106));
 sg13cmos5l_tielo heichips26_multimode_dll_small_107 (.L_LO(net107));
 sg13cmos5l_tielo heichips26_multimode_dll_small_108 (.L_LO(net108));
 sg13cmos5l_tielo heichips26_multimode_dll_small_109 (.L_LO(net109));
 sg13cmos5l_tielo heichips26_multimode_dll_small_110 (.L_LO(net110));
 sg13cmos5l_tielo heichips26_multimode_dll_small_111 (.L_LO(net111));
 sg13cmos5l_tielo heichips26_multimode_dll_small_112 (.L_LO(net112));
 sg13cmos5l_tielo heichips26_multimode_dll_small_113 (.L_LO(net113));
 sg13cmos5l_tielo heichips26_multimode_dll_small_114 (.L_LO(net114));
 sg13cmos5l_tielo heichips26_multimode_dll_small_115 (.L_LO(net115));
 sg13cmos5l_tielo heichips26_multimode_dll_small_116 (.L_LO(net116));
 sg13cmos5l_tielo heichips26_multimode_dll_small_117 (.L_LO(net117));
 sg13cmos5l_tielo heichips26_multimode_dll_small_118 (.L_LO(net118));
 sg13cmos5l_tielo heichips26_multimode_dll_small_119 (.L_LO(net119));
 sg13cmos5l_tielo heichips26_multimode_dll_small_120 (.L_LO(net120));
 sg13cmos5l_tielo heichips26_multimode_dll_small_121 (.L_LO(net121));
 sg13cmos5l_inv_1 \u_dll/_18_  (.Y(\u_dll/_01_ ),
    .A(\u_dll/startup_clk ));
 sg13cmos5l_and2_1 \u_dll/_19_  (.A(\u_dll/net97 ),
    .B(\u_dll/net99 ),
    .X(\u_dll/_14_ ));
 sg13cmos5l_nand2_1 \u_dll/_20_  (.Y(\u_dll/reset ),
    .A(\u_dll/net97 ),
    .B(\u_dll/net99 ));
 sg13cmos5l_and3_1 \u_dll/_21_  (.X(stable),
    .A(\u_dll/net97 ),
    .B(\u_dll/net99 ),
    .C(\u_dll/locked ));
 sg13cmos5l_and2_1 \u_dll/_22_  (.A(\u_dll/net97 ),
    .B(\u_dll/net99 ),
    .X(\u_dll/_12_ ));
 sg13cmos5l_and2_1 \u_dll/_23_  (.A(\u_dll/net97 ),
    .B(\u_dll/net99 ),
    .X(\u_dll/_10_ ));
 sg13cmos5l_and2_1 \u_dll/_24_  (.A(\u_dll/net97 ),
    .B(\u_dll/net99 ),
    .X(\u_dll/_08_ ));
 sg13cmos5l_and2_1 \u_dll/_25_  (.A(\u_dll/net97 ),
    .B(\u_dll/net99 ),
    .X(\u_dll/_06_ ));
 sg13cmos5l_and2_1 \u_dll/_26_  (.A(\u_dll/net97 ),
    .B(\u_dll/net99 ),
    .X(\u_dll/_04_ ));
 sg13cmos5l_and2_1 \u_dll/_27_  (.A(\u_dll/net98 ),
    .B(\u_dll/net100 ),
    .X(\u_dll/_02_ ));
 sg13cmos5l_and2_1 \u_dll/_28_  (.A(\u_dll/net98 ),
    .B(\u_dll/net100 ),
    .X(\u_dll/_00_ ));
 sg13cmos5l_and2_1 \u_dll/_29_  (.A(\u_dll/net98 ),
    .B(\u_dll/net100 ),
    .X(\u_dll/active_resetb ));
 sg13cmos5l_inv_1 \u_dll/_30_  (.Y(\u_dll/_03_ ),
    .A(\u_dll/startup_clk ));
 sg13cmos5l_inv_1 \u_dll/_31_  (.Y(\u_dll/_05_ ),
    .A(\u_dll/startup_clk ));
 sg13cmos5l_inv_1 \u_dll/_32_  (.Y(\u_dll/_07_ ),
    .A(\u_dll/startup_clk ));
 sg13cmos5l_inv_1 \u_dll/_33_  (.Y(\u_dll/_09_ ),
    .A(\u_dll/startup_clk ));
 sg13cmos5l_inv_1 \u_dll/_34_  (.Y(\u_dll/_11_ ),
    .A(\u_dll/startup_clk ));
 sg13cmos5l_inv_1 \u_dll/_35_  (.Y(\u_dll/_13_ ),
    .A(\u_dll/startup_clk ));
 sg13cmos5l_inv_1 \u_dll/_36_  (.Y(\u_dll/_15_ ),
    .A(\u_dll/startup_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/_37_  (.RESET_B(\u_dll/_06_ ),
    .D(net122),
    .Q(\u_dll/release_sync[0] ),
    .CLK(\u_dll/_07_ ));
 sg13cmos5l_tiehi \u_dll/_37__122  (.L_HI(net122));
 sg13cmos5l_dfrbpq_1 \u_dll/_38_  (.RESET_B(\u_dll/_08_ ),
    .D(\u_dll/release_sync[0] ),
    .Q(\u_dll/release_sync[1] ),
    .CLK(\u_dll/_09_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/_39_  (.RESET_B(\u_dll/_10_ ),
    .D(\u_dll/release_sync[1] ),
    .Q(\u_dll/startup[0] ),
    .CLK(\u_dll/_11_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/_40_  (.RESET_B(\u_dll/_12_ ),
    .D(\u_dll/startup[0] ),
    .Q(\u_dll/startup[1] ),
    .CLK(\u_dll/_13_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/_41_  (.RESET_B(\u_dll/_14_ ),
    .D(\u_dll/startup[1] ),
    .Q(\u_dll/startup[2] ),
    .CLK(\u_dll/_15_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/_42_  (.RESET_B(\u_dll/_00_ ),
    .D(\u_dll/startup[2] ),
    .Q(\u_dll/startup[3] ),
    .CLK(\u_dll/_01_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/_43_  (.RESET_B(\u_dll/_02_ ),
    .D(\u_dll/startup[3] ),
    .Q(\u_dll/startup[4] ),
    .CLK(\u_dll/_03_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/_44_  (.RESET_B(\u_dll/_04_ ),
    .D(\u_dll/startup[4] ),
    .Q(\u_dll/run_resetb ),
    .CLK(\u_dll/_05_ ));
 sg13cmos5l_buf_1 \u_dll/fanout100  (.A(\u_dll/enable_buffered ),
    .X(\u_dll/net100 ));
 sg13cmos5l_buf_1 \u_dll/fanout61  (.A(\u_dll/active_resetb ),
    .X(\u_dll/net61 ));
 sg13cmos5l_buf_1 \u_dll/fanout80  (.A(\u_dll/net82 ),
    .X(\u_dll/net80 ));
 sg13cmos5l_buf_1 \u_dll/fanout82  (.A(\u_dll/reset ),
    .X(\u_dll/net82 ));
 sg13cmos5l_buf_1 \u_dll/fanout97  (.A(\u_dll/net98 ),
    .X(\u_dll/net97 ));
 sg13cmos5l_buf_1 \u_dll/fanout98  (.A(\u_dll/resetb_buffered ),
    .X(\u_dll/net98 ));
 sg13cmos5l_buf_1 \u_dll/fanout99  (.A(\u_dll/net100 ),
    .X(\u_dll/net99 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1067_  (.Y(\u_dll/trim[24] ),
    .A(\u_dll/u_control/_0116_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1068_  (.Y(\u_dll/trim[23] ),
    .A(\u_dll/u_control/_0115_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1069_  (.Y(\u_dll/trim[22] ),
    .A(\u_dll/u_control/_0114_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1070_  (.Y(\u_dll/trim[21] ),
    .A(\u_dll/u_control/_0113_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1071_  (.Y(\u_dll/trim[20] ),
    .A(\u_dll/u_control/_0112_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1072_  (.Y(\u_dll/trim[19] ),
    .A(\u_dll/u_control/_0111_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1073_  (.Y(\u_dll/trim[18] ),
    .A(\u_dll/u_control/_0110_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1074_  (.Y(\u_dll/trim[17] ),
    .A(\u_dll/u_control/_0109_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1075_  (.Y(\u_dll/trim[16] ),
    .A(\u_dll/u_control/_0108_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1076_  (.Y(\u_dll/trim[15] ),
    .A(\u_dll/u_control/_0107_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1077_  (.Y(\u_dll/trim[14] ),
    .A(\u_dll/u_control/_0106_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1078_  (.Y(\u_dll/trim[13] ),
    .A(\u_dll/u_control/_0105_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1079_  (.Y(\u_dll/u_control/_0752_ ),
    .A(\u_dll/u_control/ring_count[11] ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1080_  (.Y(\u_dll/u_control/_0753_ ),
    .A(\u_dll/u_control/ring_count[3] ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1081_  (.Y(\u_dll/u_control/_0754_ ),
    .A(\u_dll/u_control/ring_count[1] ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1082_  (.Y(\u_dll/u_control/reference_missing ),
    .A(\u_dll/u_control/_0103_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1083_  (.Y(\u_dll/u_control/_0755_ ),
    .A(\u_dll/u_control/multiply_previous[4] ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1084_  (.Y(\u_dll/u_control/_0756_ ),
    .A(\u_dll/u_control/multiply_cfg[2] ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1085_  (.Y(\u_dll/u_control/_0757_ ),
    .A(\u_dll/u_control/multiply_cfg[1] ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1086_  (.Y(\u_dll/u_control/tuning_q8 [13]),
    .A(\u_dll/u_control/net58 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1087_  (.Y(\u_dll/u_control/tuning_q8 [10]),
    .A(\u_dll/u_control/_0101_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1088_  (.Y(\u_dll/u_control/tuning_q8 [9]),
    .A(\u_dll/u_control/_0100_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1089_  (.Y(\u_dll/u_control/tuning_q8 [8]),
    .A(\u_dll/u_control/_0099_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1090_  (.Y(\u_dll/u_control/ring_reset_pipe[1] ),
    .A(\u_dll/u_control/net27 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1091_  (.Y(\u_dll/u_control/ring_reset_pipe[0] ),
    .A(\u_dll/u_control/_0097_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1092_  (.Y(\u_dll/u_control/ref_reset_pipe[1] ),
    .A(\u_dll/u_control/net47 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1093_  (.Y(\u_dll/u_control/ref_reset_pipe[0] ),
    .A(\u_dll/u_control/_0095_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1094_  (.Y(\u_dll/u_control/missing_sync ),
    .A(\u_dll/u_control/_0094_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1095_  (.Y(\u_dll/u_control/missing_meta ),
    .A(\u_dll/u_control/_0093_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1096_  (.Y(\u_dll/u_control/_0758_ ),
    .A(\u_dll/u_control/_0092_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1097_  (.Y(\u_dll/u_control/_0759_ ),
    .A(\u_dll/u_control/_0090_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1098_  (.Y(\u_dll/trim[25] ),
    .A(\u_dll/u_control/_0088_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1099_  (.Y(\u_dll/u_control/_0760_ ),
    .A(\u_dll/u_control/net57 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1100_  (.Y(\u_dll/u_control/_0761_ ),
    .A(\u_dll/u_control/last_code[3] ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1101_  (.Y(\u_dll/u_control/_0762_ ),
    .A(\u_dll/u_control/watchdog_full ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1102_  (.Y(\u_dll/u_control/_0118_ ),
    .A(\u_dll/u_control/net76 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1103_  (.Y(\u_dll/u_control/_0763_ ),
    .A(\u_dll/u_control/net53 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1104_  (.Y(\u_dll/u_control/_0764_ ),
    .A(\u_dll/u_control/heartbeat[3] ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1105_  (.A(\u_dll/u_control/tuning_q8 [7]),
    .B(\u_dll/u_control/density[7] ),
    .X(\u_dll/u_control/_0765_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1106_  (.Y(\u_dll/u_control/_0766_ ),
    .A(\u_dll/u_control/tuning_q8 [7]),
    .B(\u_dll/u_control/density[7] ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1107_  (.Y(\u_dll/u_control/_0767_ ),
    .A(\u_dll/u_control/tuning_q8 [6]),
    .B(\u_dll/u_control/density[6] ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1108_  (.A(\u_dll/u_control/tuning_q8 [5]),
    .B(\u_dll/u_control/density[5] ),
    .X(\u_dll/u_control/_0768_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1109_  (.Y(\u_dll/u_control/_0769_ ),
    .A(\u_dll/u_control/tuning_q8 [4]),
    .B(\u_dll/u_control/density[4] ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1110_  (.Y(\u_dll/u_control/_0770_ ),
    .A(\u_dll/u_control/tuning_q8 [4]),
    .B(\u_dll/u_control/density[4] ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1111_  (.A(\u_dll/u_control/tuning_q8 [3]),
    .B(\u_dll/u_control/density[3] ),
    .Y(\u_dll/u_control/_0771_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1112_  (.A(\u_dll/u_control/tuning_q8 [2]),
    .B(\u_dll/u_control/density[2] ),
    .X(\u_dll/u_control/_0772_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1113_  (.Y(\u_dll/u_control/_0773_ ),
    .A(\u_dll/u_control/tuning_q8 [1]),
    .B(\u_dll/u_control/density[1] ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1114_  (.Y(\u_dll/u_control/_0774_ ),
    .A(\u_dll/u_control/tuning_q8 [0]),
    .B(\u_dll/u_control/density[0] ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1115_  (.Y(\u_dll/u_control/_0775_ ),
    .A(\u_dll/u_control/tuning_q8 [1]),
    .B(\u_dll/u_control/density[1] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1116_  (.B1(\u_dll/u_control/_0773_ ),
    .Y(\u_dll/u_control/_0776_ ),
    .A1(\u_dll/u_control/_0774_ ),
    .A2(\u_dll/u_control/_0775_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1117_  (.B(\u_dll/u_control/density[2] ),
    .A(\u_dll/u_control/tuning_q8 [2]),
    .X(\u_dll/u_control/_0777_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1118_  (.A1(\u_dll/u_control/_0776_ ),
    .A2(\u_dll/u_control/_0777_ ),
    .Y(\u_dll/u_control/_0778_ ),
    .B1(\u_dll/u_control/_0772_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1119_  (.B2(\u_dll/u_control/_0777_ ),
    .C1(\u_dll/u_control/_0772_ ),
    .B1(\u_dll/u_control/_0776_ ),
    .A1(\u_dll/u_control/tuning_q8 [3]),
    .Y(\u_dll/u_control/_0779_ ),
    .A2(\u_dll/u_control/density[3] ));
 sg13cmos5l_or3_1 \u_dll/u_control/_1120_  (.A(\u_dll/u_control/_0770_ ),
    .B(\u_dll/u_control/_0771_ ),
    .C(\u_dll/u_control/_0779_ ),
    .X(\u_dll/u_control/_0780_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1121_  (.Y(\u_dll/u_control/_0781_ ),
    .A(\u_dll/u_control/tuning_q8 [5]),
    .B(\u_dll/u_control/density[5] ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1122_  (.A1(\u_dll/u_control/_0769_ ),
    .A2(\u_dll/u_control/_0780_ ),
    .Y(\u_dll/u_control/_0782_ ),
    .B1(\u_dll/u_control/_0781_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1123_  (.Y(\u_dll/u_control/_0783_ ),
    .A(\u_dll/u_control/tuning_q8 [6]),
    .B(\u_dll/u_control/density[6] ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1124_  (.Y(\u_dll/u_control/_0784_ ),
    .A(\u_dll/u_control/_0783_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1125_  (.B1(\u_dll/u_control/_0784_ ),
    .Y(\u_dll/u_control/_0785_ ),
    .A1(\u_dll/u_control/_0768_ ),
    .A2(\u_dll/u_control/_0782_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1126_  (.B(\u_dll/u_control/density[7] ),
    .A(\u_dll/u_control/tuning_q8 [7]),
    .X(\u_dll/u_control/_0786_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1127_  (.Y(\u_dll/u_control/_0787_ ),
    .A(\u_dll/u_control/_0786_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1128_  (.A1(\u_dll/u_control/_0767_ ),
    .A2(\u_dll/u_control/_0785_ ),
    .Y(\u_dll/u_control/_0788_ ),
    .B1(\u_dll/u_control/_0787_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1129_  (.A2(\u_dll/u_control/_0785_ ),
    .A1(\u_dll/u_control/_0767_ ),
    .B1(\u_dll/u_control/_0787_ ),
    .X(\u_dll/u_control/_0789_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1130_  (.A(\u_dll/u_control/_0100_ ),
    .B(\u_dll/u_control/_0099_ ),
    .Y(\u_dll/u_control/_0790_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1131_  (.Y(\u_dll/u_control/_0791_ ),
    .A(\u_dll/u_control/tuning_q8 [9]),
    .B(\u_dll/u_control/tuning_q8 [8]));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1132_  (.A1(\u_dll/u_control/_0766_ ),
    .A2(\u_dll/u_control/_0789_ ),
    .Y(\u_dll/u_control/_0792_ ),
    .B1(\u_dll/u_control/_0791_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1133_  (.B1(\u_dll/u_control/_0790_ ),
    .Y(\u_dll/u_control/_0793_ ),
    .A1(\u_dll/u_control/_0765_ ),
    .A2(\u_dll/u_control/_0788_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1134_  (.B(\u_dll/u_control/tuning_q8 [10]),
    .C(\u_dll/u_control/_0792_ ),
    .A(\u_dll/u_control/tuning_q8 [11]),
    .Y(\u_dll/u_control/_0794_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1135_  (.B(\u_dll/u_control/tuning_q8 [11]),
    .C(\u_dll/u_control/tuning_q8 [10]),
    .A(\u_dll/u_control/tuning_q8 [12]),
    .Y(\u_dll/u_control/_0795_ ),
    .D(\u_dll/u_control/_0792_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1136_  (.A(\u_dll/u_control/net58 ),
    .B(\u_dll/u_control/_0795_ ),
    .Y(\u_dll/u_control/_0796_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1137_  (.Y(\u_dll/u_control/_0797_ ),
    .B(\u_dll/u_control/tuning_q8 [13]),
    .A_N(\u_dll/u_control/_0795_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1138_  (.Y(\u_dll/u_control/_0798_ ),
    .A(\u_dll/u_control/tuning_q8 [12]),
    .B(\u_dll/u_control/_0794_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1139_  (.A2(\u_dll/u_control/_0792_ ),
    .A1(\u_dll/u_control/tuning_q8 [10]),
    .B1(\u_dll/u_control/tuning_q8 [11]),
    .X(\u_dll/u_control/_0799_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1140_  (.A(\u_dll/u_control/_0794_ ),
    .B(\u_dll/u_control/_0799_ ),
    .X(\u_dll/u_control/_0800_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1141_  (.A1(\u_dll/u_control/_0766_ ),
    .A2(\u_dll/u_control/_0789_ ),
    .Y(\u_dll/u_control/_0801_ ),
    .B1(\u_dll/u_control/_0099_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1142_  (.A(\u_dll/u_control/tuning_q8 [8]),
    .B(\u_dll/u_control/_0765_ ),
    .C(\u_dll/u_control/_0788_ ),
    .Y(\u_dll/u_control/_0802_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1143_  (.A(\u_dll/u_control/_0801_ ),
    .B(\u_dll/u_control/_0802_ ),
    .Y(\u_dll/u_control/_0803_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1144_  (.A(\u_dll/u_control/_0100_ ),
    .B(\u_dll/u_control/_0801_ ),
    .C(\u_dll/u_control/_0802_ ),
    .Y(\u_dll/u_control/_0804_ ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1145_  (.A(\u_dll/u_control/_0101_ ),
    .B(\u_dll/u_control/_0100_ ),
    .C(\u_dll/u_control/_0801_ ),
    .D(\u_dll/u_control/_0802_ ),
    .Y(\u_dll/u_control/_0805_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1146_  (.B(\u_dll/u_control/_0799_ ),
    .C(\u_dll/u_control/_0805_ ),
    .A(\u_dll/u_control/_0794_ ),
    .Y(\u_dll/u_control/_0806_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1147_  (.B(\u_dll/u_control/_0794_ ),
    .C(\u_dll/u_control/_0799_ ),
    .A(\u_dll/u_control/tuning_q8 [12]),
    .Y(\u_dll/u_control/_0807_ ),
    .D(\u_dll/u_control/_0805_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1148_  (.A2(\u_dll/u_control/_0807_ ),
    .A1(\u_dll/u_control/_0795_ ),
    .B1(\u_dll/u_control/_0102_ ),
    .X(\u_dll/u_control/_0808_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1149_  (.A(\u_dll/u_control/last_code[6] ),
    .B(\u_dll/u_control/_0808_ ),
    .X(\u_dll/u_control/_0809_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1150_  (.Y(\u_dll/u_control/_0810_ ),
    .A(\u_dll/u_control/_0101_ ),
    .B(\u_dll/u_control/_0792_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1151_  (.Y(\u_dll/u_control/_0811_ ),
    .A(\u_dll/u_control/tuning_q8 [10]),
    .B(\u_dll/u_control/_0792_ ));
 sg13cmos5l_mux2_1 \u_dll/u_control/_1152_  (.A0(\u_dll/u_control/_0810_ ),
    .A1(\u_dll/u_control/_0101_ ),
    .S(\u_dll/u_control/_0804_ ),
    .X(\u_dll/u_control/_0812_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1153_  (.B1(\u_dll/u_control/_0793_ ),
    .Y(\u_dll/u_control/_0813_ ),
    .A1(\u_dll/u_control/tuning_q8 [9]),
    .A2(\u_dll/u_control/_0801_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1154_  (.A1(\u_dll/u_control/_0759_ ),
    .A2(\u_dll/u_control/_0813_ ),
    .Y(\u_dll/u_control/_0814_ ),
    .B1(\u_dll/u_control/_0804_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1155_  (.B1(\u_dll/u_control/net52 ),
    .Y(\u_dll/u_control/_0815_ ),
    .A1(\u_dll/u_control/_0100_ ),
    .A2(\u_dll/u_control/_0090_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1156_  (.Y(\u_dll/u_control/_0816_ ),
    .A(\u_dll/u_control/_0815_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1157_  (.B2(\u_dll/u_control/_0803_ ),
    .C1(\u_dll/u_control/_0814_ ),
    .B1(\u_dll/u_control/_0816_ ),
    .A1(\u_dll/u_control/_0091_ ),
    .Y(\u_dll/u_control/_0817_ ),
    .A2(\u_dll/u_control/_0812_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1158_  (.A2(\u_dll/u_control/_0799_ ),
    .A1(\u_dll/u_control/_0794_ ),
    .B1(\u_dll/u_control/_0805_ ),
    .X(\u_dll/u_control/_0818_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1159_  (.A1(\u_dll/u_control/_0806_ ),
    .A2(\u_dll/u_control/_0818_ ),
    .Y(\u_dll/u_control/_0819_ ),
    .B1(\u_dll/u_control/_0761_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1160_  (.A(\u_dll/u_control/_0091_ ),
    .B(\u_dll/u_control/_0812_ ),
    .Y(\u_dll/u_control/_0820_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1161_  (.A(\u_dll/u_control/_0817_ ),
    .B(\u_dll/u_control/_0819_ ),
    .C(\u_dll/u_control/_0820_ ),
    .Y(\u_dll/u_control/_0821_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1162_  (.B(\u_dll/u_control/_0806_ ),
    .C(\u_dll/u_control/_0818_ ),
    .A(\u_dll/u_control/_0761_ ),
    .Y(\u_dll/u_control/_0822_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1163_  (.B(\u_dll/u_control/_0806_ ),
    .A(\u_dll/u_control/_0798_ ),
    .X(\u_dll/u_control/_0823_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1164_  (.B1(\u_dll/u_control/_0822_ ),
    .Y(\u_dll/u_control/_0824_ ),
    .A1(\u_dll/u_control/last_code[4] ),
    .A2(\u_dll/u_control/_0823_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1165_  (.Y(\u_dll/u_control/_0825_ ),
    .A(\u_dll/u_control/tuning_q8 [13]),
    .B(\u_dll/u_control/_0795_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1166_  (.Y(\u_dll/u_control/_0826_ ),
    .A(\u_dll/u_control/_0102_ ),
    .B(\u_dll/u_control/_0795_ ));
 sg13cmos5l_mux2_1 \u_dll/u_control/_1167_  (.A0(\u_dll/u_control/tuning_q8 [13]),
    .A1(\u_dll/u_control/_0826_ ),
    .S(\u_dll/u_control/_0807_ ),
    .X(\u_dll/u_control/_0827_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1168_  (.Y(\u_dll/u_control/_0828_ ),
    .B1(\u_dll/u_control/_0827_ ),
    .B2(\u_dll/u_control/_0758_ ),
    .A2(\u_dll/u_control/_0823_ ),
    .A1(\u_dll/u_control/last_code[4] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1169_  (.B1(\u_dll/u_control/_0828_ ),
    .Y(\u_dll/u_control/_0829_ ),
    .A1(\u_dll/u_control/_0821_ ),
    .A2(\u_dll/u_control/_0824_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1170_  (.A(\u_dll/u_control/last_code[6] ),
    .B(\u_dll/u_control/_0808_ ),
    .Y(\u_dll/u_control/_0830_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1171_  (.A(\u_dll/u_control/_0758_ ),
    .B(\u_dll/u_control/_0827_ ),
    .Y(\u_dll/u_control/_0831_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1172_  (.A(\u_dll/u_control/_0830_ ),
    .B(\u_dll/u_control/_0831_ ),
    .Y(\u_dll/u_control/_0832_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1173_  (.A1(\u_dll/u_control/_0829_ ),
    .A2(\u_dll/u_control/_0832_ ),
    .Y(\u_dll/u_control/_0833_ ),
    .B1(\u_dll/u_control/_0809_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1174_  (.A2(\u_dll/u_control/_0832_ ),
    .A1(\u_dll/u_control/_0829_ ),
    .B1(\u_dll/u_control/_0809_ ),
    .X(\u_dll/u_control/_0834_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1175_  (.B(\u_dll/u_control/_0090_ ),
    .C(\u_dll/u_control/net52 ),
    .A(\u_dll/u_control/_0091_ ),
    .Y(\u_dll/u_control/_0835_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1176_  (.Y(\u_dll/u_control/_0836_ ),
    .A(\u_dll/u_control/_0761_ ),
    .B(\u_dll/u_control/_0835_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1177_  (.A(\u_dll/u_control/_0091_ ),
    .B(\u_dll/u_control/_0090_ ),
    .C(\u_dll/u_control/net52 ),
    .Y(\u_dll/u_control/_0837_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1178_  (.B(\u_dll/u_control/last_code[4] ),
    .C(\u_dll/u_control/_0837_ ),
    .A(\u_dll/u_control/last_code[3] ),
    .Y(\u_dll/u_control/_0838_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1179_  (.A(\u_dll/u_control/_0092_ ),
    .B(\u_dll/u_control/_0838_ ),
    .Y(\u_dll/u_control/_0839_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1180_  (.Y(\u_dll/u_control/_0840_ ),
    .A(\u_dll/u_control/last_code[6] ),
    .B(\u_dll/u_control/_0839_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1181_  (.A(\u_dll/u_control/_0796_ ),
    .B(\u_dll/u_control/_0840_ ),
    .X(\u_dll/u_control/_0841_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1182_  (.B(\u_dll/u_control/net52 ),
    .A(\u_dll/u_control/_0090_ ),
    .X(\u_dll/u_control/_0842_ ));
 sg13cmos5l_or3_1 \u_dll/u_control/_1183_  (.A(\u_dll/u_control/net52 ),
    .B(\u_dll/u_control/_0801_ ),
    .C(\u_dll/u_control/_0802_ ),
    .X(\u_dll/u_control/_0843_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1184_  (.B1(\u_dll/u_control/_0843_ ),
    .Y(\u_dll/u_control/_0844_ ),
    .A1(\u_dll/u_control/_0813_ ),
    .A2(\u_dll/u_control/_0842_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1185_  (.B1(\u_dll/u_control/_0091_ ),
    .Y(\u_dll/u_control/_0845_ ),
    .A1(\u_dll/u_control/_0090_ ),
    .A2(\u_dll/u_control/net52 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1186_  (.A(\u_dll/u_control/_0837_ ),
    .B_N(\u_dll/u_control/_0845_ ),
    .Y(\u_dll/u_control/_0846_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1187_  (.Y(\u_dll/u_control/_0847_ ),
    .A(\u_dll/u_control/_0846_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1188_  (.Y(\u_dll/u_control/_0848_ ),
    .B1(\u_dll/u_control/_0846_ ),
    .B2(\u_dll/u_control/_0811_ ),
    .A2(\u_dll/u_control/_0813_ ),
    .A1(\u_dll/u_control/_0090_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1189_  (.Y(\u_dll/u_control/_0849_ ),
    .A(\u_dll/u_control/_0761_ ),
    .B(\u_dll/u_control/_0837_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1190_  (.Y(\u_dll/u_control/_0850_ ),
    .A(\u_dll/u_control/_0849_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1191_  (.A(\u_dll/u_control/_0811_ ),
    .B(\u_dll/u_control/_0846_ ),
    .Y(\u_dll/u_control/_0851_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1192_  (.B2(\u_dll/u_control/_0800_ ),
    .C1(\u_dll/u_control/_0851_ ),
    .B1(\u_dll/u_control/_0850_ ),
    .A1(\u_dll/u_control/_0844_ ),
    .Y(\u_dll/u_control/_0852_ ),
    .A2(\u_dll/u_control/_0848_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1193_  (.A2(\u_dll/u_control/_0837_ ),
    .A1(\u_dll/u_control/last_code[3] ),
    .B1(\u_dll/u_control/last_code[4] ),
    .X(\u_dll/u_control/_0853_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1194_  (.Y(\u_dll/u_control/_0854_ ),
    .A(\u_dll/u_control/_0838_ ),
    .B(\u_dll/u_control/_0853_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1195_  (.A2(\u_dll/u_control/_0799_ ),
    .A1(\u_dll/u_control/_0794_ ),
    .B1(\u_dll/u_control/_0850_ ),
    .X(\u_dll/u_control/_0855_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1196_  (.B1(\u_dll/u_control/_0855_ ),
    .Y(\u_dll/u_control/_0856_ ),
    .A1(\u_dll/u_control/_0798_ ),
    .A2(\u_dll/u_control/_0854_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1197_  (.Y(\u_dll/u_control/_0857_ ),
    .A(\u_dll/u_control/_0092_ ),
    .B(\u_dll/u_control/_0838_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1198_  (.Y(\u_dll/u_control/_0858_ ),
    .B1(\u_dll/u_control/_0857_ ),
    .B2(\u_dll/u_control/_0825_ ),
    .A2(\u_dll/u_control/_0854_ ),
    .A1(\u_dll/u_control/_0798_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1199_  (.B1(\u_dll/u_control/_0858_ ),
    .Y(\u_dll/u_control/_0859_ ),
    .A1(\u_dll/u_control/_0852_ ),
    .A2(\u_dll/u_control/_0856_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1200_  (.A(\u_dll/u_control/_0796_ ),
    .B(\u_dll/u_control/_0840_ ),
    .Y(\u_dll/u_control/_0860_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1201_  (.A(\u_dll/u_control/_0825_ ),
    .B(\u_dll/u_control/_0857_ ),
    .Y(\u_dll/u_control/_0861_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1202_  (.A(\u_dll/u_control/_0860_ ),
    .B(\u_dll/u_control/_0861_ ),
    .Y(\u_dll/u_control/_0862_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1203_  (.A1(\u_dll/u_control/_0859_ ),
    .A2(\u_dll/u_control/_0862_ ),
    .Y(\u_dll/u_control/_0863_ ),
    .B1(\u_dll/u_control/_0841_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1204_  (.A2(\u_dll/u_control/_0862_ ),
    .A1(\u_dll/u_control/_0859_ ),
    .B1(\u_dll/u_control/_0841_ ),
    .X(\u_dll/u_control/_0864_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1205_  (.Y(\u_dll/u_control/_0865_ ),
    .B(\u_dll/u_control/_0833_ ),
    .A_N(\u_dll/u_control/_0800_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1206_  (.A1(\u_dll/u_control/_0834_ ),
    .A2(\u_dll/u_control/_0836_ ),
    .Y(\u_dll/u_control/_0866_ ),
    .B1(\u_dll/u_control/net11 ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1207_  (.A(\u_dll/u_control/_0850_ ),
    .B(\u_dll/u_control/_0863_ ),
    .Y(\u_dll/u_control/_0867_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1208_  (.A2(\u_dll/u_control/_0866_ ),
    .A1(\u_dll/u_control/_0865_ ),
    .B1(\u_dll/u_control/_0867_ ),
    .X(\u_dll/u_control/_0868_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1209_  (.A1(\u_dll/u_control/_0865_ ),
    .A2(\u_dll/u_control/_0866_ ),
    .Y(\u_dll/u_control/_0869_ ),
    .B1(\u_dll/u_control/_0867_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1210_  (.A(\u_dll/u_control/last_code[3] ),
    .B(\u_dll/u_control/last_code[4] ),
    .C(\u_dll/u_control/_0835_ ),
    .Y(\u_dll/u_control/_0870_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1211_  (.B1(\u_dll/u_control/last_code[4] ),
    .Y(\u_dll/u_control/_0871_ ),
    .A1(\u_dll/u_control/last_code[3] ),
    .A2(\u_dll/u_control/_0835_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1212_  (.A(\u_dll/u_control/_0870_ ),
    .B_N(\u_dll/u_control/_0871_ ),
    .Y(\u_dll/u_control/_0872_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1213_  (.Y(\u_dll/u_control/_0873_ ),
    .A(\u_dll/u_control/_0872_ ));
 sg13cmos5l_mux2_1 \u_dll/u_control/_1214_  (.A0(\u_dll/u_control/_0798_ ),
    .A1(\u_dll/u_control/_0873_ ),
    .S(\u_dll/u_control/_0834_ ),
    .X(\u_dll/u_control/_0874_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1215_  (.A(\u_dll/u_control/_0854_ ),
    .B(\u_dll/u_control/_0863_ ),
    .Y(\u_dll/u_control/_0875_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1216_  (.A2(\u_dll/u_control/_0874_ ),
    .A1(\u_dll/u_control/_0863_ ),
    .B1(\u_dll/u_control/_0875_ ),
    .X(\u_dll/u_control/_0876_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1217_  (.A1(\u_dll/u_control/_0863_ ),
    .A2(\u_dll/u_control/_0874_ ),
    .Y(\u_dll/u_control/_0877_ ),
    .B1(\u_dll/u_control/_0875_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1218_  (.A(\u_dll/u_control/net6 ),
    .B(\u_dll/u_control/_0877_ ),
    .Y(\u_dll/u_control/_0878_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1219_  (.X(\u_dll/u_control/_0879_ ),
    .A(\u_dll/u_control/_0092_ ),
    .B(\u_dll/u_control/last_code[6] ),
    .C(\u_dll/u_control/_0870_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1220_  (.A1(\u_dll/u_control/_0092_ ),
    .A2(\u_dll/u_control/_0870_ ),
    .Y(\u_dll/u_control/_0880_ ),
    .B1(\u_dll/u_control/last_code[6] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1221_  (.B1(\u_dll/u_control/_0834_ ),
    .Y(\u_dll/u_control/_0881_ ),
    .A1(\u_dll/u_control/_0879_ ),
    .A2(\u_dll/u_control/_0880_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1222_  (.A1(\u_dll/u_control/_0797_ ),
    .A2(\u_dll/u_control/_0833_ ),
    .Y(\u_dll/u_control/_0882_ ),
    .B1(\u_dll/u_control/net11 ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1223_  (.A(\u_dll/u_control/_0881_ ),
    .B(\u_dll/u_control/_0882_ ),
    .X(\u_dll/u_control/_0883_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1224_  (.Y(\u_dll/u_control/_0884_ ),
    .A(\u_dll/u_control/_0881_ ),
    .B(\u_dll/u_control/_0882_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1225_  (.A(\u_dll/u_control/net50 ),
    .B(net123),
    .X(\u_dll/u_control/_0885_ ));
 sg13cmos5l_tiehi \u_dll/u_control/_1225__123  (.L_HI(net123));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1226_  (.Y(\u_dll/u_control/_0886_ ),
    .A(\u_dll/u_control/net50 ),
    .B(net124));
 sg13cmos5l_tiehi \u_dll/u_control/_1226__124  (.L_HI(net124));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1227_  (.Y(\u_dll/u_control/_0887_ ),
    .A(\u_dll/u_control/_0758_ ),
    .B(\u_dll/u_control/_0870_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1228_  (.A(\u_dll/u_control/_0833_ ),
    .B(\u_dll/u_control/_0887_ ),
    .Y(\u_dll/u_control/_0888_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1229_  (.B1(\u_dll/u_control/_0863_ ),
    .Y(\u_dll/u_control/_0889_ ),
    .A1(\u_dll/u_control/_0826_ ),
    .A2(\u_dll/u_control/_0834_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1230_  (.Y(\u_dll/u_control/_0890_ ),
    .A(\u_dll/u_control/_0857_ ),
    .B(\u_dll/u_control/net11 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1231_  (.B1(\u_dll/u_control/_0890_ ),
    .Y(\u_dll/u_control/_0891_ ),
    .A1(\u_dll/u_control/_0888_ ),
    .A2(\u_dll/u_control/_0889_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1232_  (.Y(\u_dll/u_control/_0892_ ),
    .A(\u_dll/u_control/net37 ),
    .B(\u_dll/u_control/net4 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1233_  (.Y(\u_dll/u_control/_0135_ ),
    .A(\u_dll/u_control/_0892_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1234_  (.A(\u_dll/u_control/_0884_ ),
    .B(\u_dll/u_control/net4 ),
    .X(\u_dll/u_control/_0893_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1235_  (.Y(\u_dll/u_control/_0894_ ),
    .A(\u_dll/u_control/_0884_ ),
    .B(\u_dll/u_control/net4 ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1236_  (.A(\u_dll/u_control/net36 ),
    .B(\u_dll/u_control/_0894_ ),
    .Y(\u_dll/u_control/_0895_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1237_  (.B(\u_dll/u_control/net37 ),
    .C(\u_dll/u_control/net4 ),
    .A(\u_dll/u_control/_0884_ ),
    .Y(\u_dll/u_control/_0896_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1238_  (.X(\u_dll/u_control/_0897_ ),
    .B(\u_dll/u_control/_0896_ ),
    .A(\u_dll/u_control/_0878_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1239_  (.Y(\u_dll/u_control/_0336_ ),
    .A(\u_dll/u_control/_0897_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1240_  (.A2(\u_dll/u_control/net52 ),
    .A1(\u_dll/u_control/_0090_ ),
    .B1(\u_dll/u_control/_0091_ ),
    .X(\u_dll/u_control/_0898_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1241_  (.A(\u_dll/u_control/_0835_ ),
    .B(\u_dll/u_control/_0898_ ),
    .X(\u_dll/u_control/_0899_ ));
 sg13cmos5l_mux2_1 \u_dll/u_control/_1242_  (.A0(\u_dll/u_control/_0811_ ),
    .A1(\u_dll/u_control/_0899_ ),
    .S(\u_dll/u_control/_0834_ ),
    .X(\u_dll/u_control/_0900_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1243_  (.Y(\u_dll/u_control/_0901_ ),
    .A(\u_dll/u_control/_0846_ ),
    .B(\u_dll/u_control/net11 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1244_  (.B1(\u_dll/u_control/_0901_ ),
    .Y(\u_dll/u_control/_0902_ ),
    .A1(\u_dll/u_control/net11 ),
    .A2(\u_dll/u_control/_0900_ ));
 sg13cmos5l_mux2_1 \u_dll/u_control/_1245_  (.A0(\u_dll/u_control/_0847_ ),
    .A1(\u_dll/u_control/_0900_ ),
    .S(\u_dll/u_control/_0863_ ),
    .X(\u_dll/u_control/_0903_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1246_  (.A(\u_dll/u_control/_0842_ ),
    .B(\u_dll/u_control/net11 ),
    .X(\u_dll/u_control/_0904_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1247_  (.Y(\u_dll/u_control/_0905_ ),
    .A(\u_dll/u_control/_0834_ ),
    .B(\u_dll/u_control/_0842_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1248_  (.A1(\u_dll/u_control/_0813_ ),
    .A2(\u_dll/u_control/_0833_ ),
    .Y(\u_dll/u_control/_0906_ ),
    .B1(\u_dll/u_control/_0864_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1249_  (.Y(\u_dll/u_control/_0907_ ),
    .B1(\u_dll/u_control/_0905_ ),
    .B2(\u_dll/u_control/_0906_ ),
    .A2(\u_dll/u_control/net11 ),
    .A1(\u_dll/u_control/_0842_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1250_  (.A2(\u_dll/u_control/_0906_ ),
    .A1(\u_dll/u_control/_0905_ ),
    .B1(\u_dll/u_control/_0904_ ),
    .X(\u_dll/u_control/_0908_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1251_  (.Y(\u_dll/u_control/_0909_ ),
    .A(\u_dll/u_control/_0877_ ),
    .B(\u_dll/u_control/_0908_ ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1252_  (.A(\u_dll/u_control/net6 ),
    .B(\u_dll/u_control/net5 ),
    .C(\u_dll/u_control/net2 ),
    .D(\u_dll/u_control/_0907_ ),
    .Y(\u_dll/u_control/_0910_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1253_  (.B2(\u_dll/u_control/_0882_ ),
    .C1(\u_dll/u_control/_0875_ ),
    .B1(\u_dll/u_control/_0881_ ),
    .A1(\u_dll/u_control/_0863_ ),
    .Y(\u_dll/u_control/_0911_ ),
    .A2(\u_dll/u_control/_0874_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1254_  (.B(\u_dll/u_control/net4 ),
    .C(\u_dll/u_control/_0911_ ),
    .A(\u_dll/u_control/net37 ),
    .Y(\u_dll/u_control/_0912_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1255_  (.Y(\u_dll/u_control/_0326_ ),
    .A(\u_dll/u_control/_0912_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1256_  (.A(\u_dll/u_control/_0910_ ),
    .B(\u_dll/u_control/_0912_ ),
    .Y(\u_dll/u_control/_0318_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1257_  (.B2(\u_dll/u_control/_0832_ ),
    .C1(\u_dll/u_control/_0864_ ),
    .B1(\u_dll/u_control/_0829_ ),
    .A1(\u_dll/u_control/last_code[6] ),
    .Y(\u_dll/u_control/_0913_ ),
    .A2(\u_dll/u_control/_0808_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1258_  (.Y(\u_dll/u_control/_0914_ ),
    .B(\u_dll/u_control/_0913_ ),
    .A_N(\u_dll/u_control/_0803_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1259_  (.B1(\u_dll/u_control/_0914_ ),
    .Y(\u_dll/u_control/_0915_ ),
    .A1(\u_dll/u_control/net52 ),
    .A2(\u_dll/u_control/_0913_ ));
 sg13cmos5l_mux2_1 \u_dll/u_control/_1260_  (.A0(\u_dll/u_control/_0089_ ),
    .A1(\u_dll/u_control/_0803_ ),
    .S(\u_dll/u_control/_0913_ ),
    .X(\u_dll/u_control/_0916_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1261_  (.A(\u_dll/u_control/net36 ),
    .B(\u_dll/u_control/_0916_ ),
    .Y(\u_dll/u_control/_0127_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1262_  (.B(\u_dll/u_control/_0910_ ),
    .C(\u_dll/u_control/_0127_ ),
    .A(\u_dll/u_control/_0893_ ),
    .Y(\u_dll/u_control/_0917_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1263_  (.Y(\u_dll/u_control/_0334_ ),
    .B(\u_dll/u_control/_0917_ ),
    .A_N(\u_dll/u_control/_0318_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1264_  (.B2(\u_dll/u_control/_0906_ ),
    .C1(\u_dll/u_control/_0916_ ),
    .B1(\u_dll/u_control/_0905_ ),
    .A1(\u_dll/u_control/_0842_ ),
    .Y(\u_dll/u_control/_0918_ ),
    .A2(\u_dll/u_control/net11 ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1265_  (.A(\u_dll/u_control/_0868_ ),
    .B(\u_dll/u_control/net3 ),
    .Y(\u_dll/u_control/_0919_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1266_  (.Y(\u_dll/u_control/_0920_ ),
    .A(\u_dll/u_control/net6 ),
    .B(\u_dll/u_control/net2 ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1267_  (.A(\u_dll/u_control/_0868_ ),
    .B(\u_dll/u_control/net3 ),
    .C(\u_dll/u_control/_0908_ ),
    .D(\u_dll/u_control/_0916_ ),
    .Y(\u_dll/u_control/_0921_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1268_  (.B(\u_dll/u_control/net2 ),
    .C(\u_dll/u_control/_0918_ ),
    .A(\u_dll/u_control/net6 ),
    .Y(\u_dll/u_control/_0922_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1269_  (.A1(\u_dll/u_control/net5 ),
    .A2(\u_dll/u_control/_0922_ ),
    .Y(\u_dll/u_control/_0316_ ),
    .B1(\u_dll/u_control/_0896_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1270_  (.A(\u_dll/u_control/net3 ),
    .B(\u_dll/u_control/_0908_ ),
    .Y(\u_dll/u_control/_0923_ ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1271_  (.A(\u_dll/u_control/_0868_ ),
    .B(\u_dll/u_control/net3 ),
    .C(\u_dll/u_control/_0908_ ),
    .D(\u_dll/u_control/_0915_ ),
    .Y(\u_dll/u_control/_0924_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1272_  (.A2(\u_dll/u_control/_0924_ ),
    .A1(\u_dll/u_control/_0895_ ),
    .B1(\u_dll/u_control/_0316_ ),
    .X(\u_dll/u_control/_0332_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1273_  (.Y(\u_dll/u_control/_0925_ ),
    .A(\u_dll/u_control/net2 ),
    .B(\u_dll/u_control/_0918_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1274_  (.A1(\u_dll/u_control/_0878_ ),
    .A2(\u_dll/u_control/_0925_ ),
    .Y(\u_dll/u_control/_0320_ ),
    .B1(\u_dll/u_control/_0896_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1275_  (.Y(\u_dll/u_control/_0926_ ),
    .A(\u_dll/u_control/_0868_ ),
    .B(\u_dll/u_control/net37 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1276_  (.Y(\u_dll/u_control/_0042_ ),
    .A(\u_dll/u_control/_0926_ ));
 sg13cmos5l_and4_1 \u_dll/u_control/_1277_  (.A(\u_dll/u_control/_0876_ ),
    .B(\u_dll/u_control/_0893_ ),
    .C(\u_dll/u_control/_0916_ ),
    .D(\u_dll/u_control/_0923_ ),
    .X(\u_dll/u_control/_0927_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1278_  (.A2(\u_dll/u_control/_0927_ ),
    .A1(\u_dll/u_control/_0042_ ),
    .B1(\u_dll/u_control/_0320_ ),
    .X(\u_dll/u_control/_0330_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1279_  (.A2(\u_dll/u_control/_0920_ ),
    .A1(\u_dll/u_control/net5 ),
    .B1(\u_dll/u_control/_0896_ ),
    .X(\u_dll/u_control/_0928_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1280_  (.Y(\u_dll/u_control/_0328_ ),
    .A(\u_dll/u_control/_0928_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1281_  (.A(\u_dll/u_control/_0907_ ),
    .B(\u_dll/u_control/_0915_ ),
    .Y(\u_dll/u_control/_0929_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1282_  (.Y(\u_dll/u_control/_0930_ ),
    .A(\u_dll/u_control/_0908_ ),
    .B(\u_dll/u_control/_0916_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1283_  (.Y(\u_dll/u_control/_0931_ ),
    .A(\u_dll/u_control/net6 ),
    .B(\u_dll/u_control/_0902_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1284_  (.A(\u_dll/u_control/_0877_ ),
    .B(\u_dll/u_control/_0930_ ),
    .C(\u_dll/u_control/_0931_ ),
    .Y(\u_dll/u_control/_0932_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1285_  (.A(\u_dll/u_control/_0897_ ),
    .B(\u_dll/u_control/_0932_ ),
    .Y(\u_dll/u_control/_0324_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1286_  (.A1(\u_dll/u_control/_0912_ ),
    .A2(\u_dll/u_control/_0929_ ),
    .Y(\u_dll/u_control/_0322_ ),
    .B1(\u_dll/u_control/_0928_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1287_  (.A(\u_dll/u_control/net2 ),
    .B(\u_dll/u_control/_0907_ ),
    .Y(\u_dll/u_control/_0933_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1288_  (.A1(\u_dll/u_control/net5 ),
    .A2(\u_dll/u_control/_0933_ ),
    .Y(\u_dll/u_control/_0314_ ),
    .B1(\u_dll/u_control/_0897_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1289_  (.X(\u_dll/u_control/_0934_ ),
    .A(\u_dll/u_control/window_count[1] ),
    .B(\u_dll/u_control/window_count[0] ),
    .C(\u_dll/u_control/window_count[2] ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1290_  (.A(\u_dll/u_control/window_count[3] ),
    .B(\u_dll/u_control/_0934_ ),
    .X(\u_dll/u_control/_0935_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1291_  (.Y(\u_dll/u_control/_0936_ ),
    .A(\u_dll/u_control/window_count[4] ),
    .B(\u_dll/u_control/_0935_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1292_  (.B(\u_dll/u_control/window_count[5] ),
    .C(\u_dll/u_control/_0935_ ),
    .A(\u_dll/u_control/window_count[4] ),
    .Y(\u_dll/u_control/_0937_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1293_  (.B(\u_dll/u_control/window_count[5] ),
    .C(\u_dll/u_control/window_count[6] ),
    .A(\u_dll/u_control/window_count[4] ),
    .Y(\u_dll/u_control/_0938_ ),
    .D(\u_dll/u_control/_0935_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1294_  (.B(\u_dll/u_control/sample_sync ),
    .A(\u_dll/u_control/sample_previous ),
    .X(\u_dll/u_control/_0939_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1295_  (.Y(\u_dll/u_control/_0940_ ),
    .A(\u_dll/u_control/_0939_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1296_  (.Y(\u_dll/u_control/_0941_ ),
    .A(\u_dll/u_control/window_pending ),
    .B(\u_dll/u_control/_0940_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1297_  (.A(\u_dll/u_control/_0938_ ),
    .B(\u_dll/u_control/_0941_ ),
    .Y(\u_dll/u_control/_0942_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1298_  (.A(\u_dll/u_control/net42 ),
    .B(\u_dll/u_control/net45 ),
    .Y(\u_dll/u_control/_0943_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1299_  (.A(\u_dll/u_control/net43 ),
    .B(\u_dll/u_control/net45 ),
    .C(\u_dll/u_control/multiply_cfg[2] ),
    .Y(\u_dll/u_control/_0944_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1300_  (.Y(\u_dll/u_control/_0945_ ),
    .A(\u_dll/u_control/_0756_ ),
    .B(\u_dll/u_control/_0943_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1301_  (.A1(\u_dll/u_control/_0757_ ),
    .A2(\u_dll/u_control/net35 ),
    .Y(\u_dll/u_control/_0946_ ),
    .B1(\u_dll/u_control/multiply_previous[0] ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1302_  (.Y(\u_dll/u_control/_0947_ ),
    .B(\u_dll/u_control/multiply_cfg[0] ),
    .A_N(\u_dll/u_control/multiply_previous[0] ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1303_  (.Y(\u_dll/u_control/_0948_ ),
    .B(\u_dll/u_control/net45 ),
    .A_N(\u_dll/u_control/multiply_previous[3] ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1304_  (.Y(\u_dll/u_control/_0949_ ),
    .B(\u_dll/u_control/multiply_previous[3] ),
    .A_N(\u_dll/u_control/net45 ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1305_  (.B(\u_dll/u_control/multiply_cfg[1] ),
    .A(\u_dll/u_control/multiply_previous[1] ),
    .X(\u_dll/u_control/_0950_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1306_  (.B1(\u_dll/u_control/_0949_ ),
    .Y(\u_dll/u_control/_0951_ ),
    .A1(\u_dll/u_control/_0755_ ),
    .A2(\u_dll/u_control/net44 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1307_  (.B1(\u_dll/u_control/_0948_ ),
    .Y(\u_dll/u_control/_0952_ ),
    .A1(\u_dll/u_control/multiply_previous[2] ),
    .A2(\u_dll/u_control/_0756_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1308_  (.B2(\u_dll/u_control/_0756_ ),
    .C1(\u_dll/u_control/_0950_ ),
    .B1(\u_dll/u_control/multiply_previous[2] ),
    .A1(\u_dll/u_control/_0755_ ),
    .Y(\u_dll/u_control/_0953_ ),
    .A2(\u_dll/u_control/net44 ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1309_  (.B(net125),
    .C(\u_dll/u_control/_0947_ ),
    .A(\u_dll/u_control/_0094_ ),
    .Y(\u_dll/u_control/_0954_ ),
    .D(\u_dll/u_control/_0953_ ));
 sg13cmos5l_tiehi \u_dll/u_control/_1309__125  (.L_HI(net125));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1310_  (.A(\u_dll/u_control/_0951_ ),
    .B(\u_dll/u_control/_0952_ ),
    .C(\u_dll/u_control/_0954_ ),
    .Y(\u_dll/u_control/_0955_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1311_  (.B1(\u_dll/u_control/_0955_ ),
    .Y(\u_dll/u_control/_0956_ ),
    .A1(\u_dll/u_control/multiply_cfg[0] ),
    .A2(\u_dll/u_control/_0946_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1312_  (.Y(\u_dll/u_control/_0957_ ),
    .A(\u_dll/u_control/_0956_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1313_  (.Y(\u_dll/u_control/_0958_ ),
    .A(\u_dll/u_control/net50 ),
    .B(\u_dll/u_control/_0957_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1314_  (.A(\u_dll/u_control/_0942_ ),
    .B(\u_dll/u_control/net14 ),
    .Y(\u_dll/u_control/_0959_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1315_  (.B1(\u_dll/u_control/_0959_ ),
    .Y(\u_dll/u_control/_0960_ ),
    .A1(\u_dll/u_control/_0104_ ),
    .A2(\u_dll/u_control/_0939_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1316_  (.Y(\u_dll/u_control/_0271_ ),
    .A(\u_dll/u_control/_0960_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1317_  (.Y(\u_dll/u_control/_0961_ ),
    .A(\u_dll/u_control/window_sync ),
    .B(\u_dll/u_control/sample_toggle ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1318_  (.A(\u_dll/u_control/net28 ),
    .B(\u_dll/u_control/_0961_ ),
    .X(\u_dll/u_control/_0962_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1319_  (.Y(\u_dll/u_control/_0963_ ),
    .A(\u_dll/u_control/net28 ),
    .B(\u_dll/u_control/net132 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1320_  (.Y(\u_dll/u_control/_0964_ ),
    .A(\u_dll/u_control/ring_count[7] ),
    .B(\u_dll/u_control/net24 ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1321_  (.B(\u_dll/u_control/ring_count[5] ),
    .C(\u_dll/u_control/ring_count[4] ),
    .A(\u_dll/u_control/ring_count[6] ),
    .Y(\u_dll/u_control/_0965_ ),
    .D(\u_dll/u_control/ring_count[3] ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1322_  (.A(\u_dll/u_control/_0754_ ),
    .B(\u_dll/u_control/ring_count[0] ),
    .C(\u_dll/u_control/_0965_ ),
    .Y(\u_dll/u_control/_0966_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1323_  (.B(\u_dll/u_control/ring_count[2] ),
    .C(\u_dll/u_control/ring_count[7] ),
    .A(\u_dll/u_control/net24 ),
    .Y(\u_dll/u_control/_0967_ ),
    .D(\u_dll/u_control/_0966_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1324_  (.B(\u_dll/u_control/net30 ),
    .C(\u_dll/u_control/net24 ),
    .A(\u_dll/u_control/low_carry ),
    .Y(\u_dll/u_control/_0968_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1325_  (.B1(\u_dll/u_control/_0968_ ),
    .Y(\u_dll/u_control/_0417_ ),
    .A1(\u_dll/u_control/net30 ),
    .A2(\u_dll/u_control/net130 ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1326_  (.B(\u_dll/u_control/net34 ),
    .C(\u_dll/u_control/net24 ),
    .A(\u_dll/u_control/ring_count[12] ),
    .Y(\u_dll/u_control/_0969_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1327_  (.Y(\u_dll/u_control/_0970_ ),
    .B(\u_dll/u_control/net24 ),
    .A_N(\u_dll/u_control/net34 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1328_  (.Y(\u_dll/u_control/_0971_ ),
    .A(\u_dll/u_control/low_carry ),
    .B(\u_dll/u_control/ring_count[8] ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1329_  (.B(\u_dll/u_control/ring_count[9] ),
    .C(\u_dll/u_control/ring_count[8] ),
    .A(\u_dll/u_control/low_carry ),
    .Y(\u_dll/u_control/_0972_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1330_  (.B(\u_dll/u_control/ring_count[10] ),
    .C(\u_dll/u_control/ring_count[9] ),
    .A(\u_dll/u_control/low_carry ),
    .Y(\u_dll/u_control/_0973_ ),
    .D(\u_dll/u_control/ring_count[8] ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1331_  (.X(\u_dll/u_control/_0974_ ),
    .B(\u_dll/u_control/_0973_ ),
    .A(\u_dll/u_control/_0752_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1332_  (.B(\u_dll/u_control/_0974_ ),
    .A(\u_dll/u_control/ring_count[12] ),
    .X(\u_dll/u_control/_0975_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1333_  (.B1(\u_dll/u_control/_0969_ ),
    .Y(\u_dll/u_control/_0416_ ),
    .A1(\u_dll/u_control/_0970_ ),
    .A2(\u_dll/u_control/_0975_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1334_  (.Y(\u_dll/u_control/_0976_ ),
    .A(\u_dll/u_control/_0752_ ),
    .B(\u_dll/u_control/_0973_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1335_  (.A1(\u_dll/u_control/_0974_ ),
    .A2(\u_dll/u_control/_0976_ ),
    .Y(\u_dll/u_control/_0977_ ),
    .B1(\u_dll/u_control/net33 ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1336_  (.A1(\u_dll/u_control/_0752_ ),
    .A2(\u_dll/u_control/net33 ),
    .Y(\u_dll/u_control/_0978_ ),
    .B1(\u_dll/u_control/_0963_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1337_  (.A(\u_dll/u_control/_0977_ ),
    .B_N(\u_dll/u_control/_0978_ ),
    .Y(\u_dll/u_control/_0415_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1338_  (.Y(\u_dll/u_control/_0979_ ),
    .B(\u_dll/u_control/_0972_ ),
    .A_N(\u_dll/u_control/ring_count[10] ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1339_  (.A1(\u_dll/u_control/_0973_ ),
    .A2(\u_dll/u_control/_0979_ ),
    .Y(\u_dll/u_control/_0980_ ),
    .B1(\u_dll/u_control/net33 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1340_  (.A(\u_dll/u_control/ring_count[10] ),
    .B_N(\u_dll/u_control/net33 ),
    .Y(\u_dll/u_control/_0981_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1341_  (.A(\u_dll/u_control/_0963_ ),
    .B(\u_dll/u_control/_0980_ ),
    .C(\u_dll/u_control/_0981_ ),
    .Y(\u_dll/u_control/_0414_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1342_  (.Y(\u_dll/u_control/_0982_ ),
    .B(\u_dll/u_control/_0971_ ),
    .A_N(\u_dll/u_control/ring_count[9] ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1343_  (.A1(\u_dll/u_control/_0972_ ),
    .A2(\u_dll/u_control/_0982_ ),
    .Y(\u_dll/u_control/_0983_ ),
    .B1(\u_dll/u_control/net33 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1344_  (.A(\u_dll/u_control/ring_count[9] ),
    .B_N(\u_dll/u_control/net33 ),
    .Y(\u_dll/u_control/_0984_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1345_  (.A(\u_dll/u_control/_0963_ ),
    .B(\u_dll/u_control/_0983_ ),
    .C(\u_dll/u_control/_0984_ ),
    .Y(\u_dll/u_control/_0413_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1346_  (.X(\u_dll/u_control/_0985_ ),
    .B(\u_dll/u_control/ring_count[8] ),
    .A(\u_dll/u_control/low_carry ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1347_  (.A1(\u_dll/u_control/_0971_ ),
    .A2(\u_dll/u_control/_0985_ ),
    .Y(\u_dll/u_control/_0986_ ),
    .B1(\u_dll/u_control/net33 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1348_  (.A(\u_dll/u_control/ring_count[8] ),
    .B_N(\u_dll/u_control/net32 ),
    .Y(\u_dll/u_control/_0987_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1349_  (.A(\u_dll/u_control/net23 ),
    .B(\u_dll/u_control/_0986_ ),
    .C(\u_dll/u_control/_0987_ ),
    .Y(\u_dll/u_control/_0412_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1350_  (.B(\u_dll/u_control/ring_count[1] ),
    .C(\u_dll/u_control/ring_count[0] ),
    .A(\u_dll/u_control/ring_count[2] ),
    .Y(\u_dll/u_control/_0988_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1351_  (.A(\u_dll/u_control/_0753_ ),
    .B(\u_dll/u_control/_0988_ ),
    .Y(\u_dll/u_control/_0989_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1352_  (.Y(\u_dll/u_control/_0990_ ),
    .A(\u_dll/u_control/ring_count[4] ),
    .B(\u_dll/u_control/_0989_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1353_  (.X(\u_dll/u_control/_0991_ ),
    .B(\u_dll/u_control/_0988_ ),
    .A(\u_dll/u_control/_0965_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1354_  (.Y(\u_dll/u_control/_0992_ ),
    .A(\u_dll/u_control/ring_count[7] ),
    .B(\u_dll/u_control/_0991_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1355_  (.A(\u_dll/u_control/net31 ),
    .B(\u_dll/u_control/_0992_ ),
    .Y(\u_dll/u_control/_0993_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1356_  (.A1(\u_dll/u_control/_0964_ ),
    .A2(\u_dll/u_control/_0970_ ),
    .Y(\u_dll/u_control/_0411_ ),
    .B1(\u_dll/u_control/_0993_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1357_  (.B(\u_dll/u_control/ring_count[4] ),
    .C(\u_dll/u_control/_0989_ ),
    .A(\u_dll/u_control/ring_count[5] ),
    .Y(\u_dll/u_control/_0994_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1358_  (.Y(\u_dll/u_control/_0995_ ),
    .B(\u_dll/u_control/_0994_ ),
    .A_N(\u_dll/u_control/ring_count[6] ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1359_  (.A1(\u_dll/u_control/_0991_ ),
    .A2(\u_dll/u_control/_0995_ ),
    .Y(\u_dll/u_control/_0996_ ),
    .B1(\u_dll/u_control/net31 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1360_  (.A(\u_dll/u_control/ring_count[6] ),
    .B_N(\u_dll/u_control/net31 ),
    .Y(\u_dll/u_control/_0997_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1361_  (.A(\u_dll/u_control/net23 ),
    .B(\u_dll/u_control/_0996_ ),
    .C(\u_dll/u_control/_0997_ ),
    .Y(\u_dll/u_control/_0410_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1362_  (.Y(\u_dll/u_control/_0998_ ),
    .B(\u_dll/u_control/_0990_ ),
    .A_N(\u_dll/u_control/ring_count[5] ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1363_  (.A1(\u_dll/u_control/_0994_ ),
    .A2(\u_dll/u_control/_0998_ ),
    .Y(\u_dll/u_control/_0999_ ),
    .B1(\u_dll/u_control/net31 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1364_  (.A(\u_dll/u_control/ring_count[5] ),
    .B_N(\u_dll/u_control/net32 ),
    .Y(\u_dll/u_control/_1000_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1365_  (.A(\u_dll/u_control/net23 ),
    .B(\u_dll/u_control/_0999_ ),
    .C(\u_dll/u_control/_1000_ ),
    .Y(\u_dll/u_control/_0409_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1366_  (.X(\u_dll/u_control/_1001_ ),
    .B(\u_dll/u_control/_0989_ ),
    .A(\u_dll/u_control/ring_count[4] ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1367_  (.A1(\u_dll/u_control/_0990_ ),
    .A2(\u_dll/u_control/_1001_ ),
    .Y(\u_dll/u_control/_1002_ ),
    .B1(\u_dll/u_control/net31 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1368_  (.A(\u_dll/u_control/ring_count[4] ),
    .B_N(\u_dll/u_control/net31 ),
    .Y(\u_dll/u_control/_1003_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1369_  (.A(\u_dll/u_control/net23 ),
    .B(\u_dll/u_control/_1002_ ),
    .C(\u_dll/u_control/_1003_ ),
    .Y(\u_dll/u_control/_0408_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1370_  (.Y(\u_dll/u_control/_1004_ ),
    .A(\u_dll/u_control/ring_count[3] ),
    .B(\u_dll/u_control/_0988_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1371_  (.A(\u_dll/u_control/net31 ),
    .B(\u_dll/u_control/_1004_ ),
    .Y(\u_dll/u_control/_1005_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1372_  (.A1(\u_dll/u_control/_0753_ ),
    .A2(\u_dll/u_control/net31 ),
    .Y(\u_dll/u_control/_1006_ ),
    .B1(\u_dll/u_control/net23 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1373_  (.A(\u_dll/u_control/_1005_ ),
    .B_N(\u_dll/u_control/_1006_ ),
    .Y(\u_dll/u_control/_0407_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1374_  (.A2(\u_dll/u_control/ring_count[0] ),
    .A1(\u_dll/u_control/ring_count[1] ),
    .B1(\u_dll/u_control/ring_count[2] ),
    .X(\u_dll/u_control/_1007_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1375_  (.A1(\u_dll/u_control/_0988_ ),
    .A2(\u_dll/u_control/_1007_ ),
    .Y(\u_dll/u_control/_1008_ ),
    .B1(\u_dll/u_control/net30 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1376_  (.A(\u_dll/u_control/ring_count[2] ),
    .B_N(\u_dll/u_control/net30 ),
    .Y(\u_dll/u_control/_1009_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1377_  (.A(\u_dll/u_control/net23 ),
    .B(\u_dll/u_control/_1008_ ),
    .C(\u_dll/u_control/_1009_ ),
    .Y(\u_dll/u_control/_0406_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1378_  (.B(\u_dll/u_control/ring_count[0] ),
    .A(\u_dll/u_control/ring_count[1] ),
    .X(\u_dll/u_control/_1010_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1379_  (.A(\u_dll/u_control/net30 ),
    .B(\u_dll/u_control/_1010_ ),
    .Y(\u_dll/u_control/_1011_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1380_  (.A(\u_dll/u_control/ring_count[1] ),
    .B_N(\u_dll/u_control/net30 ),
    .Y(\u_dll/u_control/_1012_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1381_  (.A(\u_dll/u_control/net23 ),
    .B(\u_dll/u_control/_1011_ ),
    .C(\u_dll/u_control/_1012_ ),
    .Y(\u_dll/u_control/_0405_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1382_  (.A(\u_dll/u_control/net30 ),
    .B_N(\u_dll/u_control/ring_count[0] ),
    .Y(\u_dll/u_control/_1013_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1383_  (.A(\u_dll/u_control/ring_count[0] ),
    .B_N(\u_dll/u_control/net30 ),
    .Y(\u_dll/u_control/_1014_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1384_  (.A(\u_dll/u_control/net23 ),
    .B(\u_dll/u_control/_1013_ ),
    .C(\u_dll/u_control/_1014_ ),
    .Y(\u_dll/u_control/_0404_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1385_  (.X(\u_dll/u_control/_1015_ ),
    .B(\u_dll/u_control/_0961_ ),
    .A(\u_dll/u_control/ring_reset_pipe[1] ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1386_  (.A(\u_dll/u_control/net34 ),
    .B(\u_dll/u_control/_0975_ ),
    .C(\u_dll/u_control/net21 ),
    .Y(\u_dll/u_control/_1016_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1387_  (.A2(\u_dll/u_control/net24 ),
    .A1(\u_dll/u_control/sampled_count[12] ),
    .B1(\u_dll/u_control/_1016_ ),
    .X(\u_dll/u_control/_0403_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1388_  (.Y(\u_dll/u_control/_1017_ ),
    .A(\u_dll/u_control/sampled_count[11] ),
    .B(\u_dll/u_control/net24 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1389_  (.B1(\u_dll/u_control/_1017_ ),
    .Y(\u_dll/u_control/_0402_ ),
    .A1(\u_dll/u_control/_0977_ ),
    .A2(\u_dll/u_control/net22 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1390_  (.Y(\u_dll/u_control/_1018_ ),
    .A(\u_dll/u_control/sampled_count[10] ),
    .B(\u_dll/u_control/net25 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1391_  (.B1(\u_dll/u_control/_1018_ ),
    .Y(\u_dll/u_control/_0401_ ),
    .A1(\u_dll/u_control/_0980_ ),
    .A2(\u_dll/u_control/net22 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1392_  (.Y(\u_dll/u_control/_1019_ ),
    .A(\u_dll/u_control/sampled_count[9] ),
    .B(\u_dll/u_control/net24 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1393_  (.B1(\u_dll/u_control/_1019_ ),
    .Y(\u_dll/u_control/_0400_ ),
    .A1(\u_dll/u_control/_0983_ ),
    .A2(\u_dll/u_control/net22 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1394_  (.Y(\u_dll/u_control/_1020_ ),
    .A(\u_dll/u_control/sampled_count[8] ),
    .B(\u_dll/u_control/net25 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1395_  (.B1(\u_dll/u_control/_1020_ ),
    .Y(\u_dll/u_control/_0399_ ),
    .A1(\u_dll/u_control/_0986_ ),
    .A2(\u_dll/u_control/net22 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1396_  (.Y(\u_dll/u_control/_1021_ ),
    .A(\u_dll/u_control/sampled_count[7] ),
    .B(\u_dll/u_control/net26 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1397_  (.B1(\u_dll/u_control/_1021_ ),
    .Y(\u_dll/u_control/_0398_ ),
    .A1(\u_dll/u_control/_0993_ ),
    .A2(\u_dll/u_control/net22 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1398_  (.Y(\u_dll/u_control/_1022_ ),
    .A(\u_dll/u_control/sampled_count[6] ),
    .B(\u_dll/u_control/net26 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1399_  (.B1(\u_dll/u_control/_1022_ ),
    .Y(\u_dll/u_control/_0397_ ),
    .A1(\u_dll/u_control/_0996_ ),
    .A2(\u_dll/u_control/net21 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1400_  (.Y(\u_dll/u_control/_1023_ ),
    .A(\u_dll/u_control/sampled_count[5] ),
    .B(\u_dll/u_control/net25 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1401_  (.B1(\u_dll/u_control/_1023_ ),
    .Y(\u_dll/u_control/_0396_ ),
    .A1(\u_dll/u_control/_0999_ ),
    .A2(\u_dll/u_control/net21 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1402_  (.Y(\u_dll/u_control/_1024_ ),
    .A(\u_dll/u_control/sampled_count[4] ),
    .B(\u_dll/u_control/net25 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1403_  (.B1(\u_dll/u_control/_1024_ ),
    .Y(\u_dll/u_control/_0395_ ),
    .A1(\u_dll/u_control/_1002_ ),
    .A2(\u_dll/u_control/net21 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1404_  (.Y(\u_dll/u_control/_1025_ ),
    .A(\u_dll/u_control/sampled_count[3] ),
    .B(\u_dll/u_control/net25 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1405_  (.B1(\u_dll/u_control/_1025_ ),
    .Y(\u_dll/u_control/_0394_ ),
    .A1(\u_dll/u_control/_1005_ ),
    .A2(\u_dll/u_control/net21 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1406_  (.Y(\u_dll/u_control/_1026_ ),
    .A(\u_dll/u_control/sampled_count[2] ),
    .B(\u_dll/u_control/net25 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1407_  (.B1(\u_dll/u_control/_1026_ ),
    .Y(\u_dll/u_control/_0393_ ),
    .A1(\u_dll/u_control/_1008_ ),
    .A2(\u_dll/u_control/net21 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1408_  (.Y(\u_dll/u_control/_1027_ ),
    .A(\u_dll/u_control/sampled_count[1] ),
    .B(\u_dll/u_control/net25 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1409_  (.B1(\u_dll/u_control/_1027_ ),
    .Y(\u_dll/u_control/_0392_ ),
    .A1(\u_dll/u_control/_1011_ ),
    .A2(\u_dll/u_control/net21 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1410_  (.Y(\u_dll/u_control/_1028_ ),
    .A(\u_dll/u_control/sampled_count[0] ),
    .B(\u_dll/u_control/net25 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1411_  (.B1(\u_dll/u_control/_1028_ ),
    .Y(\u_dll/u_control/_0391_ ),
    .A1(\u_dll/u_control/_1013_ ),
    .A2(\u_dll/u_control/net21 ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1412_  (.A(\u_dll/u_control/net27 ),
    .B(\u_dll/u_control/window_sync ),
    .X(\u_dll/u_control/_0390_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1413_  (.B(\u_dll/u_control/heartbeat_previous[3] ),
    .A(\u_dll/u_control/heartbeat_sync[3] ),
    .X(\u_dll/u_control/_1029_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1414_  (.B(\u_dll/u_control/heartbeat_previous[1] ),
    .A(\u_dll/u_control/heartbeat_sync[1] ),
    .X(\u_dll/u_control/_1030_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1415_  (.B(\u_dll/u_control/heartbeat_previous[2] ),
    .A(\u_dll/u_control/heartbeat_sync[2] ),
    .X(\u_dll/u_control/_1031_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1416_  (.B(\u_dll/u_control/heartbeat_previous[0] ),
    .A(\u_dll/u_control/heartbeat_sync[0] ),
    .X(\u_dll/u_control/_1032_ ));
 sg13cmos5l_nor4_2 \u_dll/u_control/_1417_  (.A(\u_dll/u_control/_1029_ ),
    .B(\u_dll/u_control/_1030_ ),
    .C(\u_dll/u_control/_1031_ ),
    .Y(\u_dll/u_control/_1033_ ),
    .D(\u_dll/u_control/_1032_ ));
 sg13cmos5l_nand2_2 \u_dll/u_control/_1418_  (.Y(\u_dll/u_control/_1034_ ),
    .A(\u_dll/u_control/_1033_ ),
    .B(\u_dll/u_control/net29 ));
 sg13cmos5l_inv_4 \u_dll/u_control/_1419_  (.A(\u_dll/u_control/net20 ),
    .Y(\u_dll/u_control/_1035_ ));
 sg13cmos5l_nand2_2 \u_dll/u_control/_1420_  (.Y(\u_dll/u_control/_1036_ ),
    .A(\u_dll/u_control/watchdog_full ),
    .B(\u_dll/u_control/_1035_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1421_  (.Y(\u_dll/u_control/_1037_ ),
    .A(\u_dll/u_control/_1036_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1422_  (.B(\u_dll/u_control/watchdog[2] ),
    .C(\u_dll/u_control/watchdog[1] ),
    .A(\u_dll/u_control/watchdog[3] ),
    .Y(\u_dll/u_control/_1038_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1423_  (.Y(\u_dll/u_control/_1039_ ),
    .A(\u_dll/u_control/watchdog[5] ),
    .B(\u_dll/u_control/watchdog[4] ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1424_  (.A(\u_dll/u_control/watchdog[0] ),
    .B(\u_dll/u_control/_1038_ ),
    .C(\u_dll/u_control/_1039_ ),
    .Y(\u_dll/u_control/_1040_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1425_  (.A(\u_dll/u_control/watchdog_full ),
    .B(\u_dll/u_control/net20 ),
    .Y(\u_dll/u_control/_1041_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1426_  (.Y(\u_dll/u_control/_1042_ ),
    .B1(\u_dll/u_control/_1040_ ),
    .B2(\u_dll/u_control/_1041_ ),
    .A2(\u_dll/u_control/_1037_ ),
    .A1(\u_dll/u_control/watchdog_carry ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1427_  (.Y(\u_dll/u_control/_0389_ ),
    .A(\u_dll/u_control/_1042_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1428_  (.X(\u_dll/u_control/_1043_ ),
    .A(\u_dll/u_control/watchdog_carry ),
    .B(\u_dll/u_control/watchdog[6] ),
    .C(\u_dll/u_control/_0762_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1429_  (.A(\u_dll/u_control/watchdog[7] ),
    .B(\u_dll/u_control/_1043_ ),
    .X(\u_dll/u_control/_1044_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1430_  (.X(\u_dll/u_control/_1045_ ),
    .A(\u_dll/u_control/watchdog[9] ),
    .B(\u_dll/u_control/watchdog[8] ),
    .C(\u_dll/u_control/_1044_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1431_  (.A(\u_dll/u_control/watchdog[10] ),
    .B(\u_dll/u_control/_1045_ ),
    .X(\u_dll/u_control/_1046_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1432_  (.B1(\u_dll/u_control/_1035_ ),
    .Y(\u_dll/u_control/_1047_ ),
    .A1(\u_dll/u_control/watchdog[11] ),
    .A2(\u_dll/u_control/_1046_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1433_  (.A1(\u_dll/u_control/watchdog[11] ),
    .A2(\u_dll/u_control/_1046_ ),
    .Y(\u_dll/u_control/_0388_ ),
    .B1(\u_dll/u_control/_1047_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1434_  (.B1(\u_dll/u_control/_1035_ ),
    .Y(\u_dll/u_control/_1048_ ),
    .A1(\u_dll/u_control/watchdog[10] ),
    .A2(\u_dll/u_control/_1045_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1435_  (.A(\u_dll/u_control/_1046_ ),
    .B(\u_dll/u_control/_1048_ ),
    .Y(\u_dll/u_control/_0387_ ));
 sg13cmos5l_and4_1 \u_dll/u_control/_1436_  (.A(\u_dll/u_control/watchdog_carry ),
    .B(\u_dll/u_control/watchdog[8] ),
    .C(\u_dll/u_control/watchdog[7] ),
    .D(\u_dll/u_control/watchdog[6] ),
    .X(\u_dll/u_control/_1049_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1437_  (.A1(\u_dll/u_control/_1036_ ),
    .A2(\u_dll/u_control/_1049_ ),
    .Y(\u_dll/u_control/_1050_ ),
    .B1(\u_dll/u_control/watchdog[9] ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1438_  (.A(\u_dll/u_control/net20 ),
    .B(\u_dll/u_control/_1045_ ),
    .C(\u_dll/u_control/_1050_ ),
    .Y(\u_dll/u_control/_0386_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1439_  (.B1(\u_dll/u_control/_1035_ ),
    .Y(\u_dll/u_control/_1051_ ),
    .A1(\u_dll/u_control/watchdog[8] ),
    .A2(\u_dll/u_control/_1044_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1440_  (.A1(\u_dll/u_control/watchdog[8] ),
    .A2(\u_dll/u_control/_1044_ ),
    .Y(\u_dll/u_control/_0385_ ),
    .B1(\u_dll/u_control/_1051_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1441_  (.A(\u_dll/u_control/watchdog[7] ),
    .B(\u_dll/u_control/_1043_ ),
    .Y(\u_dll/u_control/_1052_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1442_  (.A(\u_dll/u_control/net20 ),
    .B(\u_dll/u_control/_1044_ ),
    .C(\u_dll/u_control/_1052_ ),
    .Y(\u_dll/u_control/_0384_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1443_  (.A1(\u_dll/u_control/watchdog_carry ),
    .A2(\u_dll/u_control/_0762_ ),
    .Y(\u_dll/u_control/_1053_ ),
    .B1(\u_dll/u_control/watchdog[6] ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1444_  (.A(\u_dll/u_control/net20 ),
    .B(\u_dll/u_control/_1043_ ),
    .C(\u_dll/u_control/_1053_ ),
    .Y(\u_dll/u_control/_0383_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1445_  (.X(\u_dll/u_control/_1054_ ),
    .A(\u_dll/u_control/watchdog[1] ),
    .B(\u_dll/u_control/watchdog[0] ),
    .C(\u_dll/u_control/_0762_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1446_  (.A(\u_dll/u_control/watchdog[2] ),
    .B(\u_dll/u_control/_1054_ ),
    .X(\u_dll/u_control/_1055_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1447_  (.A(\u_dll/u_control/watchdog[3] ),
    .B(\u_dll/u_control/_1055_ ),
    .X(\u_dll/u_control/_1056_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1448_  (.A(\u_dll/u_control/watchdog[4] ),
    .B(\u_dll/u_control/_1056_ ),
    .X(\u_dll/u_control/_1057_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1449_  (.B1(\u_dll/u_control/_1035_ ),
    .Y(\u_dll/u_control/_1058_ ),
    .A1(\u_dll/u_control/watchdog[5] ),
    .A2(\u_dll/u_control/_1057_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1450_  (.A1(\u_dll/u_control/watchdog[5] ),
    .A2(\u_dll/u_control/_1057_ ),
    .Y(\u_dll/u_control/_0382_ ),
    .B1(\u_dll/u_control/_1058_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1451_  (.A(\u_dll/u_control/watchdog[0] ),
    .B(\u_dll/u_control/_1036_ ),
    .X(\u_dll/u_control/_1059_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1452_  (.Y(\u_dll/u_control/_1060_ ),
    .B(\u_dll/u_control/_1059_ ),
    .A_N(\u_dll/u_control/_1038_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1453_  (.A(\u_dll/u_control/watchdog[4] ),
    .B_N(\u_dll/u_control/_1060_ ),
    .Y(\u_dll/u_control/_1061_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1454_  (.A(\u_dll/u_control/net20 ),
    .B(\u_dll/u_control/_1057_ ),
    .C(\u_dll/u_control/_1061_ ),
    .Y(\u_dll/u_control/_0381_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1455_  (.A(\u_dll/u_control/watchdog[3] ),
    .B(\u_dll/u_control/_1055_ ),
    .Y(\u_dll/u_control/_1062_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1456_  (.A(\u_dll/u_control/net20 ),
    .B(\u_dll/u_control/_1056_ ),
    .C(\u_dll/u_control/_1062_ ),
    .Y(\u_dll/u_control/_0380_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1457_  (.A(\u_dll/u_control/watchdog[2] ),
    .B(\u_dll/u_control/_1054_ ),
    .Y(\u_dll/u_control/_1063_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1458_  (.A(\u_dll/u_control/net131 ),
    .B(\u_dll/u_control/_1055_ ),
    .C(\u_dll/u_control/_1063_ ),
    .Y(\u_dll/u_control/_0379_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1459_  (.B1(\u_dll/u_control/_1035_ ),
    .Y(\u_dll/u_control/_1064_ ),
    .A1(\u_dll/u_control/watchdog[1] ),
    .A2(\u_dll/u_control/_1059_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1460_  (.A(\u_dll/u_control/_1054_ ),
    .B(\u_dll/u_control/_1064_ ),
    .Y(\u_dll/u_control/_0378_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1461_  (.A(\u_dll/u_control/watchdog[0] ),
    .B(\u_dll/u_control/_1041_ ),
    .Y(\u_dll/u_control/_1065_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1462_  (.A(\u_dll/u_control/_1059_ ),
    .B(\u_dll/u_control/_1065_ ),
    .Y(\u_dll/u_control/_0377_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1463_  (.X(\u_dll/u_control/_1066_ ),
    .B(\u_dll/u_control/_1041_ ),
    .A(\u_dll/u_control/qualified_sync ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1464_  (.B2(\u_dll/u_control/reference_missing ),
    .C1(\u_dll/u_control/ring_reset_pipe[1] ),
    .B1(\u_dll/u_control/_1066_ ),
    .A1(\u_dll/u_control/watchdog_full ),
    .Y(\u_dll/u_control/_0376_ ),
    .A2(\u_dll/u_control/net129 ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1465_  (.Y(\u_dll/u_control/_0418_ ),
    .A(\u_dll/u_control/_0104_ ),
    .B(\u_dll/u_control/_0939_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1466_  (.A1(\u_dll/u_control/net49 ),
    .A2(\u_dll/u_control/_0956_ ),
    .Y(\u_dll/u_control/_0419_ ),
    .B1(\u_dll/u_control/_0418_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1467_  (.A2(\u_dll/u_control/_0956_ ),
    .A1(\u_dll/u_control/net49 ),
    .B1(\u_dll/u_control/_0418_ ),
    .X(\u_dll/u_control/_0420_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1468_  (.A(\u_dll/u_control/sampled_count[12] ),
    .B(\u_dll/u_control/net16 ),
    .Y(\u_dll/u_control/_0421_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1469_  (.A(\u_dll/u_control/_0938_ ),
    .B(\u_dll/u_control/_0956_ ),
    .Y(\u_dll/u_control/_0422_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1470_  (.A2(\u_dll/u_control/_0957_ ),
    .A1(\u_dll/u_control/_0942_ ),
    .B1(\u_dll/u_control/net40 ),
    .X(\u_dll/u_control/_0423_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1471_  (.A(\u_dll/u_control/cycles[12] ),
    .B(\u_dll/u_control/net18 ),
    .Y(\u_dll/u_control/_0424_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1472_  (.A(\u_dll/u_control/_0421_ ),
    .B(\u_dll/u_control/net12 ),
    .C(\u_dll/u_control/_0424_ ),
    .Y(\u_dll/u_control/_0375_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1473_  (.A(\u_dll/u_control/sampled_count[11] ),
    .B(\u_dll/u_control/net17 ),
    .Y(\u_dll/u_control/_0425_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1474_  (.A(\u_dll/u_control/cycles[11] ),
    .B(\u_dll/u_control/net18 ),
    .Y(\u_dll/u_control/_0426_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1475_  (.A(\u_dll/u_control/net13 ),
    .B(\u_dll/u_control/_0425_ ),
    .C(\u_dll/u_control/_0426_ ),
    .Y(\u_dll/u_control/_0374_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1476_  (.A(\u_dll/u_control/sampled_count[10] ),
    .B(\u_dll/u_control/net17 ),
    .Y(\u_dll/u_control/_0427_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1477_  (.A(\u_dll/u_control/cycles[10] ),
    .B(\u_dll/u_control/net18 ),
    .Y(\u_dll/u_control/_0428_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1478_  (.A(\u_dll/u_control/net13 ),
    .B(\u_dll/u_control/_0427_ ),
    .C(\u_dll/u_control/_0428_ ),
    .Y(\u_dll/u_control/_0373_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1479_  (.A(\u_dll/u_control/sampled_count[9] ),
    .B(\u_dll/u_control/net17 ),
    .Y(\u_dll/u_control/_0429_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1480_  (.A(\u_dll/u_control/cycles[9] ),
    .B(\u_dll/u_control/net18 ),
    .Y(\u_dll/u_control/_0430_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1481_  (.A(\u_dll/u_control/net13 ),
    .B(\u_dll/u_control/_0429_ ),
    .C(\u_dll/u_control/_0430_ ),
    .Y(\u_dll/u_control/_0372_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1482_  (.A(\u_dll/u_control/sampled_count[8] ),
    .B(\u_dll/u_control/net17 ),
    .Y(\u_dll/u_control/_0431_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1483_  (.A(\u_dll/u_control/cycles[8] ),
    .B(\u_dll/u_control/net18 ),
    .Y(\u_dll/u_control/_0432_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1484_  (.A(\u_dll/u_control/net13 ),
    .B(\u_dll/u_control/_0431_ ),
    .C(\u_dll/u_control/_0432_ ),
    .Y(\u_dll/u_control/_0371_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1485_  (.A(\u_dll/u_control/sampled_count[7] ),
    .B(\u_dll/u_control/net17 ),
    .Y(\u_dll/u_control/_0433_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1486_  (.A(\u_dll/u_control/cycles[7] ),
    .B(\u_dll/u_control/net19 ),
    .Y(\u_dll/u_control/_0434_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1487_  (.A(\u_dll/u_control/net13 ),
    .B(\u_dll/u_control/_0433_ ),
    .C(\u_dll/u_control/_0434_ ),
    .Y(\u_dll/u_control/_0370_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1488_  (.A(\u_dll/u_control/sampled_count[6] ),
    .B(\u_dll/u_control/net16 ),
    .Y(\u_dll/u_control/_0435_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1489_  (.A(\u_dll/u_control/cycles[6] ),
    .B(\u_dll/u_control/net18 ),
    .Y(\u_dll/u_control/_0436_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1490_  (.A(\u_dll/u_control/net12 ),
    .B(\u_dll/u_control/_0435_ ),
    .C(\u_dll/u_control/_0436_ ),
    .Y(\u_dll/u_control/_0369_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1491_  (.A(\u_dll/u_control/sampled_count[5] ),
    .B(\u_dll/u_control/net16 ),
    .Y(\u_dll/u_control/_0437_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1492_  (.A(\u_dll/u_control/cycles[5] ),
    .B(\u_dll/u_control/net19 ),
    .Y(\u_dll/u_control/_0438_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1493_  (.A(\u_dll/u_control/net12 ),
    .B(\u_dll/u_control/_0437_ ),
    .C(\u_dll/u_control/_0438_ ),
    .Y(\u_dll/u_control/_0368_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1494_  (.A(\u_dll/u_control/sampled_count[4] ),
    .B(\u_dll/u_control/net16 ),
    .Y(\u_dll/u_control/_0439_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1495_  (.A(\u_dll/u_control/cycles[4] ),
    .B(\u_dll/u_control/net19 ),
    .Y(\u_dll/u_control/_0440_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1496_  (.A(\u_dll/u_control/net12 ),
    .B(\u_dll/u_control/_0439_ ),
    .C(\u_dll/u_control/_0440_ ),
    .Y(\u_dll/u_control/_0367_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1497_  (.A(\u_dll/u_control/sampled_count[3] ),
    .B(\u_dll/u_control/net16 ),
    .Y(\u_dll/u_control/_0441_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1498_  (.A(\u_dll/u_control/cycles[3] ),
    .B(\u_dll/u_control/net19 ),
    .Y(\u_dll/u_control/_0442_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1499_  (.A(\u_dll/u_control/net12 ),
    .B(\u_dll/u_control/_0441_ ),
    .C(\u_dll/u_control/_0442_ ),
    .Y(\u_dll/u_control/_0366_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1500_  (.A(\u_dll/u_control/sampled_count[2] ),
    .B(\u_dll/u_control/net16 ),
    .Y(\u_dll/u_control/_0443_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1501_  (.A(\u_dll/u_control/cycles[2] ),
    .B(\u_dll/u_control/net19 ),
    .Y(\u_dll/u_control/_0444_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1502_  (.A(\u_dll/u_control/net12 ),
    .B(\u_dll/u_control/_0443_ ),
    .C(\u_dll/u_control/_0444_ ),
    .Y(\u_dll/u_control/_0365_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1503_  (.A(\u_dll/u_control/sampled_count[1] ),
    .B(\u_dll/u_control/net16 ),
    .Y(\u_dll/u_control/_0445_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1504_  (.A(\u_dll/u_control/cycles[1] ),
    .B(\u_dll/u_control/net18 ),
    .Y(\u_dll/u_control/_0446_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1505_  (.A(\u_dll/u_control/net12 ),
    .B(\u_dll/u_control/_0445_ ),
    .C(\u_dll/u_control/_0446_ ),
    .Y(\u_dll/u_control/_0364_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1506_  (.A(\u_dll/u_control/sampled_count[0] ),
    .B(\u_dll/u_control/net16 ),
    .Y(\u_dll/u_control/_0447_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1507_  (.A(\u_dll/u_control/cycles[0] ),
    .B(\u_dll/u_control/net18 ),
    .Y(\u_dll/u_control/_0448_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1508_  (.A(\u_dll/u_control/net12 ),
    .B(\u_dll/u_control/_0447_ ),
    .C(\u_dll/u_control/_0448_ ),
    .Y(\u_dll/u_control/_0363_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1509_  (.A(\u_dll/u_control/update_pending[2] ),
    .B(\u_dll/u_control/net14 ),
    .Y(\u_dll/u_control/_0449_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1510_  (.X(\u_dll/u_control/_0450_ ),
    .B(\u_dll/u_control/net14 ),
    .A(\u_dll/u_control/update_pending[2] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1511_  (.B1(\u_dll/u_control/net56 ),
    .Y(\u_dll/u_control/_0451_ ),
    .A1(\u_dll/u_control/error_magnitude[0] ),
    .A2(\u_dll/u_control/error_value[1] ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1512_  (.Y(\u_dll/u_control/_0452_ ),
    .A(\u_dll/u_control/net55 ),
    .B(\u_dll/u_control/error_value[2] ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1513_  (.A(\u_dll/u_control/_0451_ ),
    .B(\u_dll/u_control/_0452_ ),
    .X(\u_dll/u_control/_0453_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1514_  (.Y(\u_dll/u_control/_0454_ ),
    .B(\u_dll/u_control/_0453_ ),
    .A_N(\u_dll/u_control/error_value[3] ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1515_  (.Y(\u_dll/u_control/_0455_ ),
    .A(\u_dll/u_control/net55 ),
    .B(\u_dll/u_control/_0454_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1516_  (.B1(\u_dll/u_control/net55 ),
    .Y(\u_dll/u_control/_0456_ ),
    .A1(\u_dll/u_control/error_value[4] ),
    .A2(\u_dll/u_control/_0454_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1517_  (.Y(\u_dll/u_control/_0457_ ),
    .B(\u_dll/u_control/_0456_ ),
    .A_N(\u_dll/u_control/error_value[5] ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1518_  (.Y(\u_dll/u_control/_0458_ ),
    .A(\u_dll/u_control/net55 ),
    .B(\u_dll/u_control/_0457_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1519_  (.B1(\u_dll/u_control/net55 ),
    .Y(\u_dll/u_control/_0459_ ),
    .A1(\u_dll/u_control/error_value[6] ),
    .A2(\u_dll/u_control/_0457_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1520_  (.Y(\u_dll/u_control/_0460_ ),
    .A(\u_dll/u_control/_0459_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1521_  (.A1(\u_dll/u_control/net55 ),
    .A2(\u_dll/u_control/error_value[7] ),
    .Y(\u_dll/u_control/_0461_ ),
    .B1(\u_dll/u_control/_0460_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1522_  (.X(\u_dll/u_control/_0462_ ),
    .B(\u_dll/u_control/error_value[9] ),
    .A(\u_dll/u_control/error_value[8] ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1523_  (.A(\u_dll/u_control/error_value[9] ),
    .B(\u_dll/u_control/_0461_ ),
    .Y(\u_dll/u_control/_0463_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1524_  (.A(\u_dll/u_control/net55 ),
    .B(\u_dll/u_control/error_value[8] ),
    .X(\u_dll/u_control/_0464_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1525_  (.B(\u_dll/u_control/error_value[11] ),
    .C(\u_dll/u_control/error_value[12] ),
    .A(\u_dll/u_control/error_value[10] ),
    .Y(\u_dll/u_control/_0465_ ),
    .D(\u_dll/u_control/_0464_ ));
 sg13cmos5l_or4_1 \u_dll/u_control/_1526_  (.A(\u_dll/u_control/net55 ),
    .B(\u_dll/u_control/error_value[10] ),
    .C(\u_dll/u_control/error_value[11] ),
    .D(\u_dll/u_control/error_value[12] ),
    .X(\u_dll/u_control/_0466_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1527_  (.B2(\u_dll/u_control/_0466_ ),
    .C1(\u_dll/u_control/_0463_ ),
    .B1(\u_dll/u_control/_0465_ ),
    .A1(\u_dll/u_control/_0461_ ),
    .Y(\u_dll/u_control/_0467_ ),
    .A2(\u_dll/u_control/_0462_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1528_  (.Y(\u_dll/u_control/_0468_ ),
    .A(\u_dll/u_control/error_value[7] ),
    .B(\u_dll/u_control/_0459_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1529_  (.Y(\u_dll/u_control/_0469_ ),
    .A(\u_dll/u_control/error_value[5] ),
    .B(\u_dll/u_control/_0456_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1530_  (.Y(\u_dll/u_control/_0470_ ),
    .A(\u_dll/u_control/error_value[6] ),
    .B(\u_dll/u_control/_0458_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1531_  (.A(\u_dll/u_control/_0468_ ),
    .B(\u_dll/u_control/_0469_ ),
    .C(\u_dll/u_control/_0470_ ),
    .Y(\u_dll/u_control/_0471_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1532_  (.B(\u_dll/u_control/_0453_ ),
    .A(\u_dll/u_control/error_value[3] ),
    .X(\u_dll/u_control/_0472_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1533_  (.Y(\u_dll/u_control/_0473_ ),
    .A(\u_dll/u_control/_0472_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1534_  (.Y(\u_dll/u_control/_0474_ ),
    .A(\u_dll/u_control/error_value[4] ),
    .B(\u_dll/u_control/_0455_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1535_  (.B(\u_dll/u_control/_0455_ ),
    .A(\u_dll/u_control/error_value[4] ),
    .X(\u_dll/u_control/_0475_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1536_  (.Y(\u_dll/u_control/_0476_ ),
    .A(\u_dll/u_control/net42 ),
    .B(\u_dll/u_control/_0475_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1537_  (.A(\u_dll/u_control/multiply_cfg[2] ),
    .B(\u_dll/u_control/_0943_ ),
    .Y(\u_dll/u_control/_0477_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1538_  (.Y(\u_dll/u_control/_0478_ ),
    .A(\u_dll/u_control/multiply_cfg[1] ),
    .B(\u_dll/u_control/_0945_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1539_  (.A1(\u_dll/u_control/error_magnitude[0] ),
    .A2(\u_dll/u_control/error_value[1] ),
    .Y(\u_dll/u_control/_0479_ ),
    .B1(\u_dll/u_control/_0451_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1540_  (.A2(\u_dll/u_control/error_value[1] ),
    .A1(\u_dll/u_control/_0760_ ),
    .B1(\u_dll/u_control/_0479_ ),
    .X(\u_dll/u_control/_0480_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1541_  (.Y(\u_dll/u_control/_0481_ ),
    .A(\u_dll/u_control/error_value[2] ),
    .B(\u_dll/u_control/_0451_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1542_  (.Y(\u_dll/u_control/_0482_ ),
    .B(\u_dll/u_control/net45 ),
    .A_N(\u_dll/u_control/_0481_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1543_  (.Y(\u_dll/u_control/_0483_ ),
    .B1(\u_dll/u_control/_0480_ ),
    .B2(\u_dll/u_control/_0477_ ),
    .A2(\u_dll/u_control/_0478_ ),
    .A1(\u_dll/u_control/error_magnitude[0] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1544_  (.B1(\u_dll/u_control/_0482_ ),
    .Y(\u_dll/u_control/_0484_ ),
    .A1(\u_dll/u_control/_0477_ ),
    .A2(\u_dll/u_control/_0480_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1545_  (.A(\u_dll/u_control/_0483_ ),
    .B(\u_dll/u_control/_0484_ ),
    .Y(\u_dll/u_control/_0485_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1546_  (.Y(\u_dll/u_control/_0486_ ),
    .B(\u_dll/u_control/_0481_ ),
    .A_N(\u_dll/u_control/net45 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1547_  (.B1(\u_dll/u_control/_0486_ ),
    .Y(\u_dll/u_control/_0487_ ),
    .A1(\u_dll/u_control/net42 ),
    .A2(\u_dll/u_control/_0472_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1548_  (.Y(\u_dll/u_control/_0488_ ),
    .A(\u_dll/u_control/net42 ),
    .B(\u_dll/u_control/_0472_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1549_  (.B1(\u_dll/u_control/_0488_ ),
    .Y(\u_dll/u_control/_0489_ ),
    .A1(\u_dll/u_control/_0485_ ),
    .A2(\u_dll/u_control/_0487_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1550_  (.B(\u_dll/u_control/_0471_ ),
    .C(\u_dll/u_control/_0475_ ),
    .A(\u_dll/u_control/_0467_ ),
    .Y(\u_dll/u_control/_0490_ ),
    .D(\u_dll/u_control/_0489_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1551_  (.Y(\u_dll/u_control/_0491_ ),
    .A(\u_dll/u_control/_0100_ ),
    .B(\u_dll/u_control/_0099_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1552_  (.A(\u_dll/u_control/tuning_q8 [11]),
    .B(\u_dll/u_control/tuning_q8 [10]),
    .C(\u_dll/u_control/_0491_ ),
    .Y(\u_dll/u_control/_0492_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1553_  (.A1(\u_dll/u_control/net58 ),
    .A2(\u_dll/u_control/_0492_ ),
    .Y(\u_dll/u_control/_0493_ ),
    .B1(\u_dll/u_control/_0760_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1554_  (.X(\u_dll/u_control/_0494_ ),
    .B(\u_dll/u_control/tuning_q8 [0]),
    .A(\u_dll/u_control/tuning_q8 [2]));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1555_  (.A(\u_dll/u_control/tuning_q8 [12]),
    .B(\u_dll/u_control/tuning_q8 [7]),
    .C(\u_dll/u_control/tuning_q8 [6]),
    .D(\u_dll/u_control/tuning_q8 [3]),
    .Y(\u_dll/u_control/_0495_ ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1556_  (.A(\u_dll/u_control/tuning_q8 [5]),
    .B(\u_dll/u_control/tuning_q8 [4]),
    .C(\u_dll/u_control/tuning_q8 [1]),
    .D(\u_dll/u_control/_0494_ ),
    .Y(\u_dll/u_control/_0496_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1557_  (.A(\u_dll/u_control/net58 ),
    .B(\u_dll/u_control/tuning_q8 [11]),
    .C(\u_dll/u_control/_0101_ ),
    .Y(\u_dll/u_control/_0497_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1558_  (.A1(\u_dll/u_control/_0790_ ),
    .A2(\u_dll/u_control/_0497_ ),
    .Y(\u_dll/u_control/_0498_ ),
    .B1(\u_dll/u_control/net57 ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1559_  (.A(\u_dll/u_control/_0493_ ),
    .B(\u_dll/u_control/_0498_ ),
    .Y(\u_dll/u_control/_0499_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1560_  (.B(\u_dll/u_control/_0495_ ),
    .C(\u_dll/u_control/_0496_ ),
    .A(\u_dll/u_control/_0490_ ),
    .Y(\u_dll/u_control/_0500_ ),
    .D(\u_dll/u_control/_0499_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1561_  (.Y(\u_dll/u_control/_0501_ ),
    .A(\u_dll/u_control/_0500_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1562_  (.A(\u_dll/u_control/net14 ),
    .B(\u_dll/u_control/_0500_ ),
    .Y(\u_dll/u_control/_0502_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1563_  (.A(\u_dll/u_control/_0449_ ),
    .B(\u_dll/u_control/_0502_ ),
    .Y(\u_dll/u_control/_0503_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1564_  (.A1(\u_dll/u_control/saturated_windows[0] ),
    .A2(\u_dll/u_control/_0450_ ),
    .Y(\u_dll/u_control/_0504_ ),
    .B1(\u_dll/u_control/saturated_windows[1] ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1565_  (.A(\u_dll/u_control/_0503_ ),
    .B(\u_dll/u_control/_0504_ ),
    .Y(\u_dll/u_control/_0362_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1566_  (.B1(\u_dll/u_control/saturated_windows[0] ),
    .Y(\u_dll/u_control/_0505_ ),
    .A1(\u_dll/u_control/saturated_windows[1] ),
    .A2(\u_dll/u_control/_0449_ ));
 sg13cmos5l_nand3b_1 \u_dll/u_control/_1567_  (.B(\u_dll/u_control/_0450_ ),
    .C(\u_dll/u_control/_0502_ ),
    .Y(\u_dll/u_control/_0506_ ),
    .A_N(\u_dll/u_control/saturated_windows[0] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1568_  (.B1(\u_dll/u_control/_0506_ ),
    .Y(\u_dll/u_control/_0361_ ),
    .A1(\u_dll/u_control/_0503_ ),
    .A2(\u_dll/u_control/_0505_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1569_  (.A(\u_dll/u_control/net58 ),
    .B(\u_dll/u_control/net53 ),
    .Y(\u_dll/u_control/_0507_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1570_  (.B(\u_dll/u_control/net53 ),
    .A(\u_dll/u_control/tuning_q8 [12]),
    .X(\u_dll/u_control/_0508_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1571_  (.Y(\u_dll/u_control/_0509_ ),
    .A(\u_dll/u_control/tuning_q8 [8]),
    .B(\u_dll/u_control/net53 ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1572_  (.Y(\u_dll/u_control/_0510_ ),
    .A(\u_dll/u_control/_0099_ ),
    .B(\u_dll/u_control/net54 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1573_  (.Y(\u_dll/u_control/_0511_ ),
    .A(\u_dll/u_control/_0510_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1574_  (.X(\u_dll/u_control/_0512_ ),
    .B(\u_dll/u_control/net54 ),
    .A(\u_dll/u_control/tuning_q8 [7]));
 sg13cmos5l_and2_1 \u_dll/u_control/_1575_  (.A(\u_dll/u_control/tuning_q8 [7]),
    .B(\u_dll/u_control/net54 ),
    .X(\u_dll/u_control/_0513_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1576_  (.A(\u_dll/u_control/tuning_q8 [6]),
    .B(\u_dll/u_control/step_value[6] ),
    .X(\u_dll/u_control/_0514_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1577_  (.Y(\u_dll/u_control/_0515_ ),
    .A(\u_dll/u_control/tuning_q8 [5]),
    .B(\u_dll/u_control/step_value[5] ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1578_  (.Y(\u_dll/u_control/_0516_ ),
    .A(\u_dll/u_control/tuning_q8 [4]),
    .B(\u_dll/u_control/step_value[4] ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1579_  (.A(\u_dll/u_control/tuning_q8 [3]),
    .B(\u_dll/u_control/step_value[3] ),
    .Y(\u_dll/u_control/_0517_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1580_  (.A(\u_dll/u_control/tuning_q8 [2]),
    .B(\u_dll/u_control/step_value[2] ),
    .X(\u_dll/u_control/_0518_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1581_  (.Y(\u_dll/u_control/_0519_ ),
    .A(\u_dll/u_control/tuning_q8 [1]),
    .B(\u_dll/u_control/step_value[1] ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1582_  (.Y(\u_dll/u_control/_0520_ ),
    .A(\u_dll/u_control/tuning_q8 [0]),
    .B(\u_dll/u_control/step_value[0] ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1583_  (.Y(\u_dll/u_control/_0521_ ),
    .A(\u_dll/u_control/tuning_q8 [1]),
    .B(\u_dll/u_control/step_value[1] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1584_  (.B1(\u_dll/u_control/_0519_ ),
    .Y(\u_dll/u_control/_0522_ ),
    .A1(\u_dll/u_control/_0520_ ),
    .A2(\u_dll/u_control/_0521_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1585_  (.B(\u_dll/u_control/step_value[2] ),
    .A(\u_dll/u_control/tuning_q8 [2]),
    .X(\u_dll/u_control/_0523_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1586_  (.A1(\u_dll/u_control/_0522_ ),
    .A2(\u_dll/u_control/_0523_ ),
    .Y(\u_dll/u_control/_0524_ ),
    .B1(\u_dll/u_control/_0518_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1587_  (.B2(\u_dll/u_control/_0523_ ),
    .C1(\u_dll/u_control/_0518_ ),
    .B1(\u_dll/u_control/_0522_ ),
    .A1(\u_dll/u_control/tuning_q8 [3]),
    .Y(\u_dll/u_control/_0525_ ),
    .A2(\u_dll/u_control/step_value[3] ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1588_  (.A(\u_dll/u_control/_0516_ ),
    .B(\u_dll/u_control/_0517_ ),
    .C(\u_dll/u_control/_0525_ ),
    .Y(\u_dll/u_control/_0526_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1589_  (.A1(\u_dll/u_control/tuning_q8 [4]),
    .A2(\u_dll/u_control/step_value[4] ),
    .Y(\u_dll/u_control/_0527_ ),
    .B1(\u_dll/u_control/_0526_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1590_  (.Y(\u_dll/u_control/_0528_ ),
    .A(\u_dll/u_control/tuning_q8 [5]),
    .B(\u_dll/u_control/step_value[5] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1591_  (.B1(\u_dll/u_control/_0515_ ),
    .Y(\u_dll/u_control/_0529_ ),
    .A1(\u_dll/u_control/_0527_ ),
    .A2(\u_dll/u_control/_0528_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1592_  (.B(\u_dll/u_control/step_value[6] ),
    .A(\u_dll/u_control/tuning_q8 [6]),
    .X(\u_dll/u_control/_0530_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1593_  (.A2(\u_dll/u_control/_0530_ ),
    .A1(\u_dll/u_control/_0529_ ),
    .B1(\u_dll/u_control/_0514_ ),
    .X(\u_dll/u_control/_0531_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1594_  (.A1(\u_dll/u_control/_0512_ ),
    .A2(\u_dll/u_control/_0531_ ),
    .Y(\u_dll/u_control/_0532_ ),
    .B1(\u_dll/u_control/_0513_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1595_  (.B(\u_dll/u_control/net54 ),
    .A(\u_dll/u_control/_0100_ ),
    .X(\u_dll/u_control/_0533_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1596_  (.A(\u_dll/u_control/_0511_ ),
    .B(\u_dll/u_control/_0532_ ),
    .C(\u_dll/u_control/_0533_ ),
    .Y(\u_dll/u_control/_0534_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1597_  (.Y(\u_dll/u_control/_0535_ ),
    .A(\u_dll/u_control/_0101_ ),
    .B(\u_dll/u_control/_0763_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1598_  (.B(\u_dll/u_control/net53 ),
    .A(\u_dll/u_control/tuning_q8 [11]),
    .X(\u_dll/u_control/_0536_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1599_  (.B(\u_dll/u_control/_0535_ ),
    .C(\u_dll/u_control/_0536_ ),
    .A(\u_dll/u_control/_0534_ ),
    .Y(\u_dll/u_control/_0537_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1600_  (.B1(\u_dll/u_control/_0537_ ),
    .Y(\u_dll/u_control/_0538_ ),
    .A1(\u_dll/u_control/_0763_ ),
    .A2(\u_dll/u_control/_0492_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1601_  (.A(\u_dll/u_control/_0508_ ),
    .B(\u_dll/u_control/_0538_ ),
    .X(\u_dll/u_control/_0539_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1602_  (.A1(\u_dll/u_control/tuning_q8 [12]),
    .A2(\u_dll/u_control/net53 ),
    .Y(\u_dll/u_control/_0540_ ),
    .B1(\u_dll/u_control/_0539_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1603_  (.A1(\u_dll/u_control/net58 ),
    .A2(\u_dll/u_control/net53 ),
    .Y(\u_dll/u_control/_0541_ ),
    .B1(\u_dll/u_control/_0540_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1604_  (.X(\u_dll/u_control/_0542_ ),
    .B(\u_dll/u_control/_0541_ ),
    .A(\u_dll/u_control/_0507_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1605_  (.A(\u_dll/u_control/multiply_cfg[1] ),
    .B(\u_dll/u_control/multiply_cfg[0] ),
    .C(\u_dll/u_control/_0945_ ),
    .Y(\u_dll/u_control/_0543_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1606_  (.A(\u_dll/u_control/cycles[12] ),
    .B(\u_dll/u_control/cycles[11] ),
    .Y(\u_dll/u_control/_0544_ ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1607_  (.A(\u_dll/u_control/cycles[10] ),
    .B(\u_dll/u_control/cycles[9] ),
    .C(\u_dll/u_control/cycles[8] ),
    .D(\u_dll/u_control/cycles[7] ),
    .Y(\u_dll/u_control/_0545_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1608_  (.A(\u_dll/u_control/cycles[2] ),
    .B(\u_dll/u_control/cycles[1] ),
    .C(\u_dll/u_control/cycles[0] ),
    .Y(\u_dll/u_control/_0546_ ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1609_  (.A(\u_dll/u_control/cycles[6] ),
    .B(\u_dll/u_control/cycles[5] ),
    .C(\u_dll/u_control/cycles[4] ),
    .D(\u_dll/u_control/cycles[3] ),
    .Y(\u_dll/u_control/_0547_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1610_  (.B(\u_dll/u_control/_0545_ ),
    .C(\u_dll/u_control/_0546_ ),
    .A(\u_dll/u_control/_0544_ ),
    .Y(\u_dll/u_control/_0548_ ),
    .D(\u_dll/u_control/_0547_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1611_  (.A(\u_dll/u_control/_0543_ ),
    .B_N(\u_dll/u_control/_0548_ ),
    .Y(\u_dll/u_control/_0549_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1612_  (.Y(\u_dll/u_control/_0550_ ),
    .B(\u_dll/u_control/_0549_ ),
    .A_N(\u_dll/u_control/_0490_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1613_  (.A(\u_dll/u_control/update_pending[2] ),
    .B(\u_dll/u_control/_0550_ ),
    .X(\u_dll/u_control/_0551_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1614_  (.A(\u_dll/u_control/net14 ),
    .B(\u_dll/u_control/_0551_ ),
    .Y(\u_dll/u_control/_0552_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1615_  (.A2(\u_dll/u_control/_0956_ ),
    .A1(\u_dll/u_control/net39 ),
    .B1(\u_dll/u_control/_0552_ ),
    .X(\u_dll/u_control/_0553_ ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1616_  (.A(\u_dll/u_control/net15 ),
    .B(\u_dll/u_control/_0507_ ),
    .C(\u_dll/u_control/_0541_ ),
    .D(\u_dll/u_control/net8 ),
    .Y(\u_dll/u_control/_0554_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1617_  (.A2(\u_dll/u_control/net9 ),
    .A1(\u_dll/u_control/net58 ),
    .B1(\u_dll/u_control/_0554_ ),
    .X(\u_dll/u_control/_0355_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1618_  (.B(\u_dll/u_control/net53 ),
    .C(\u_dll/u_control/_0540_ ),
    .A(\u_dll/u_control/net58 ),
    .Y(\u_dll/u_control/_0555_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1619_  (.A(\u_dll/u_control/_0101_ ),
    .B(\u_dll/u_control/_0763_ ),
    .Y(\u_dll/u_control/_0556_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1620_  (.A2(\u_dll/u_control/_0491_ ),
    .A1(\u_dll/u_control/net54 ),
    .B1(\u_dll/u_control/_0534_ ),
    .X(\u_dll/u_control/_0557_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1621_  (.B(\u_dll/u_control/net54 ),
    .A(\u_dll/u_control/_0101_ ),
    .X(\u_dll/u_control/_0558_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1622_  (.A1(\u_dll/u_control/_0535_ ),
    .A2(\u_dll/u_control/_0557_ ),
    .Y(\u_dll/u_control/_0559_ ),
    .B1(\u_dll/u_control/_0556_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1623_  (.B(\u_dll/u_control/_0559_ ),
    .A(\u_dll/u_control/_0536_ ),
    .X(\u_dll/u_control/_0560_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1624_  (.Y(\u_dll/u_control/_0561_ ),
    .A(\u_dll/u_control/_0508_ ),
    .B(\u_dll/u_control/_0538_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1625_  (.Y(\u_dll/u_control/_0562_ ),
    .A(\u_dll/u_control/_0557_ ),
    .B(\u_dll/u_control/_0558_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1626_  (.B1(\u_dll/u_control/_0509_ ),
    .Y(\u_dll/u_control/_0563_ ),
    .A1(\u_dll/u_control/_0511_ ),
    .A2(\u_dll/u_control/_0532_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1627_  (.Y(\u_dll/u_control/_0564_ ),
    .A(\u_dll/u_control/_0533_ ),
    .B(\u_dll/u_control/_0563_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1628_  (.Y(\u_dll/u_control/_0565_ ),
    .A(\u_dll/u_control/_0510_ ),
    .B(\u_dll/u_control/_0532_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1629_  (.B(\u_dll/u_control/net54 ),
    .A(\u_dll/u_control/tuning_q8 [7]),
    .X(\u_dll/u_control/_0566_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1630_  (.Y(\u_dll/u_control/_0567_ ),
    .A(\u_dll/u_control/_0531_ ),
    .B(\u_dll/u_control/_0566_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1631_  (.Y(\u_dll/u_control/_0568_ ),
    .A(\u_dll/u_control/_0529_ ),
    .B(\u_dll/u_control/_0530_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1632_  (.Y(\u_dll/u_control/_0569_ ),
    .A(\u_dll/u_control/_0527_ ),
    .B(\u_dll/u_control/_0528_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1633_  (.B1(\u_dll/u_control/_0516_ ),
    .Y(\u_dll/u_control/_0570_ ),
    .A1(\u_dll/u_control/_0517_ ),
    .A2(\u_dll/u_control/_0525_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1634_  (.Y(\u_dll/u_control/_0571_ ),
    .B(\u_dll/u_control/_0570_ ),
    .A_N(\u_dll/u_control/_0526_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1635_  (.B(\u_dll/u_control/step_value[3] ),
    .A(\u_dll/u_control/tuning_q8 [3]),
    .X(\u_dll/u_control/_0572_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1636_  (.B(\u_dll/u_control/_0572_ ),
    .A(\u_dll/u_control/_0524_ ),
    .X(\u_dll/u_control/_0573_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1637_  (.Y(\u_dll/u_control/_0574_ ),
    .A(\u_dll/u_control/_0522_ ),
    .B(\u_dll/u_control/_0523_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1638_  (.Y(\u_dll/u_control/_0575_ ),
    .A(\u_dll/u_control/_0520_ ),
    .B(\u_dll/u_control/_0521_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1639_  (.Y(\u_dll/u_control/_0576_ ),
    .A(\u_dll/u_control/tuning_q8 [0]),
    .B(\u_dll/u_control/step_value[0] ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1640_  (.B(\u_dll/u_control/_0574_ ),
    .C(\u_dll/u_control/_0575_ ),
    .A(\u_dll/u_control/_0573_ ),
    .Y(\u_dll/u_control/_0577_ ),
    .D(\u_dll/u_control/_0576_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1641_  (.A(\u_dll/u_control/_0577_ ),
    .B_N(\u_dll/u_control/_0571_ ),
    .Y(\u_dll/u_control/_0578_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1642_  (.B(\u_dll/u_control/_0568_ ),
    .C(\u_dll/u_control/_0569_ ),
    .A(\u_dll/u_control/_0567_ ),
    .Y(\u_dll/u_control/_0579_ ),
    .D(\u_dll/u_control/_0578_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1643_  (.B(\u_dll/u_control/_0564_ ),
    .C(\u_dll/u_control/_0565_ ),
    .A(\u_dll/u_control/_0562_ ),
    .Y(\u_dll/u_control/_0580_ ),
    .D(\u_dll/u_control/_0579_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1644_  (.B(\u_dll/u_control/_0561_ ),
    .C(\u_dll/u_control/_0580_ ),
    .A(\u_dll/u_control/_0560_ ),
    .Y(\u_dll/u_control/_0581_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1645_  (.B2(\u_dll/u_control/_0581_ ),
    .C1(\u_dll/u_control/net15 ),
    .B1(\u_dll/u_control/_0542_ ),
    .A1(\u_dll/u_control/_0507_ ),
    .Y(\u_dll/u_control/_0582_ ),
    .A2(\u_dll/u_control/_0539_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1646_  (.Y(\u_dll/u_control/_0583_ ),
    .A(\u_dll/u_control/_0555_ ),
    .B(\u_dll/u_control/_0582_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1647_  (.A(\u_dll/u_control/net8 ),
    .B(\u_dll/u_control/_0561_ ),
    .C(\u_dll/u_control/net1 ),
    .Y(\u_dll/u_control/_0584_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1648_  (.A2(\u_dll/u_control/net8 ),
    .A1(\u_dll/u_control/tuning_q8 [12]),
    .B1(\u_dll/u_control/_0584_ ),
    .X(\u_dll/u_control/_0354_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1649_  (.A(\u_dll/u_control/net9 ),
    .B(\u_dll/u_control/_0560_ ),
    .C(\u_dll/u_control/net1 ),
    .Y(\u_dll/u_control/_0585_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1650_  (.A2(\u_dll/u_control/net9 ),
    .A1(\u_dll/u_control/tuning_q8 [11]),
    .B1(\u_dll/u_control/_0585_ ),
    .X(\u_dll/u_control/_0353_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1651_  (.Y(\u_dll/u_control/_0586_ ),
    .B(\u_dll/u_control/_0582_ ),
    .A_N(\u_dll/u_control/_0562_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1652_  (.A(\u_dll/u_control/net15 ),
    .B(\u_dll/u_control/_0555_ ),
    .Y(\u_dll/u_control/_0587_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1653_  (.A(\u_dll/u_control/net9 ),
    .B(\u_dll/u_control/_0587_ ),
    .Y(\u_dll/u_control/_0588_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1654_  (.Y(\u_dll/u_control/_0352_ ),
    .B1(\u_dll/u_control/_0586_ ),
    .B2(\u_dll/u_control/_0588_ ),
    .A2(\u_dll/u_control/net9 ),
    .A1(\u_dll/u_control/tuning_q8 [10]));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1655_  (.Y(\u_dll/u_control/_0589_ ),
    .B(\u_dll/u_control/_0582_ ),
    .A_N(\u_dll/u_control/_0564_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1656_  (.Y(\u_dll/u_control/_0351_ ),
    .B1(\u_dll/u_control/_0588_ ),
    .B2(\u_dll/u_control/_0589_ ),
    .A2(\u_dll/u_control/net9 ),
    .A1(\u_dll/u_control/tuning_q8 [9]));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1657_  (.Y(\u_dll/u_control/_0590_ ),
    .B(\u_dll/u_control/_0582_ ),
    .A_N(\u_dll/u_control/_0565_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1658_  (.Y(\u_dll/u_control/_0350_ ),
    .B1(\u_dll/u_control/_0588_ ),
    .B2(\u_dll/u_control/_0590_ ),
    .A2(\u_dll/u_control/net9 ),
    .A1(\u_dll/u_control/tuning_q8 [8]));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1659_  (.A(\u_dll/u_control/net8 ),
    .B(\u_dll/u_control/_0567_ ),
    .C(\u_dll/u_control/net1 ),
    .Y(\u_dll/u_control/_0591_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1660_  (.A2(\u_dll/u_control/net8 ),
    .A1(\u_dll/u_control/tuning_q8 [7]),
    .B1(\u_dll/u_control/_0591_ ),
    .X(\u_dll/u_control/_0349_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1661_  (.A(\u_dll/u_control/net8 ),
    .B(\u_dll/u_control/_0568_ ),
    .C(\u_dll/u_control/_0583_ ),
    .Y(\u_dll/u_control/_0592_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1662_  (.A2(\u_dll/u_control/net8 ),
    .A1(\u_dll/u_control/tuning_q8 [6]),
    .B1(\u_dll/u_control/_0592_ ),
    .X(\u_dll/u_control/_0348_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1663_  (.A(\u_dll/u_control/net10 ),
    .B(\u_dll/u_control/_0569_ ),
    .C(\u_dll/u_control/_0583_ ),
    .Y(\u_dll/u_control/_0593_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1664_  (.A2(\u_dll/u_control/net8 ),
    .A1(\u_dll/u_control/tuning_q8 [5]),
    .B1(\u_dll/u_control/_0593_ ),
    .X(\u_dll/u_control/_0347_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1665_  (.A(\u_dll/u_control/net10 ),
    .B(\u_dll/u_control/_0571_ ),
    .C(\u_dll/u_control/net1 ),
    .Y(\u_dll/u_control/_0594_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1666_  (.A2(\u_dll/u_control/net10 ),
    .A1(\u_dll/u_control/tuning_q8 [4]),
    .B1(\u_dll/u_control/_0594_ ),
    .X(\u_dll/u_control/_0346_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1667_  (.A(\u_dll/u_control/net7 ),
    .B(\u_dll/u_control/_0573_ ),
    .C(\u_dll/u_control/net1 ),
    .Y(\u_dll/u_control/_0595_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1668_  (.A2(\u_dll/u_control/net7 ),
    .A1(\u_dll/u_control/tuning_q8 [3]),
    .B1(\u_dll/u_control/_0595_ ),
    .X(\u_dll/u_control/_0345_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1669_  (.A(\u_dll/u_control/net7 ),
    .B(\u_dll/u_control/_0574_ ),
    .C(\u_dll/u_control/net1 ),
    .Y(\u_dll/u_control/_0596_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1670_  (.A2(\u_dll/u_control/net7 ),
    .A1(\u_dll/u_control/tuning_q8 [2]),
    .B1(\u_dll/u_control/_0596_ ),
    .X(\u_dll/u_control/_0344_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1671_  (.A(\u_dll/u_control/net7 ),
    .B(\u_dll/u_control/_0575_ ),
    .C(\u_dll/u_control/net1 ),
    .Y(\u_dll/u_control/_0597_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1672_  (.A2(\u_dll/u_control/net7 ),
    .A1(\u_dll/u_control/tuning_q8 [1]),
    .B1(\u_dll/u_control/_0597_ ),
    .X(\u_dll/u_control/_0343_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1673_  (.A(\u_dll/u_control/net7 ),
    .B(\u_dll/u_control/_0576_ ),
    .C(\u_dll/u_control/net1 ),
    .Y(\u_dll/u_control/_0598_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1674_  (.A2(\u_dll/u_control/net7 ),
    .A1(\u_dll/u_control/tuning_q8 [0]),
    .B1(\u_dll/u_control/_0598_ ),
    .X(\u_dll/u_control/_0342_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1675_  (.A1(\u_dll/u_control/_0938_ ),
    .A2(\u_dll/u_control/_0941_ ),
    .Y(\u_dll/u_control/_0341_ ),
    .B1(\u_dll/u_control/net14 ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1676_  (.A(\u_dll/u_control/net47 ),
    .B(\u_dll/u_control/sample_sync ),
    .X(\u_dll/u_control/_0340_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1677_  (.B1(\u_dll/u_control/net47 ),
    .Y(\u_dll/u_control/_0599_ ),
    .A1(\u_dll/u_control/window_toggle ),
    .A2(\u_dll/u_control/_0422_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1678_  (.A1(\u_dll/u_control/window_toggle ),
    .A2(\u_dll/u_control/_0422_ ),
    .Y(\u_dll/u_control/_0339_ ),
    .B1(\u_dll/u_control/_0599_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1679_  (.Y(\u_dll/u_control/_0600_ ),
    .A(\u_dll/u_control/net51 ),
    .B(\u_dll/u_control/_0543_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1680_  (.A1(\u_dll/u_control/saturated_windows[1] ),
    .A2(\u_dll/u_control/_0450_ ),
    .Y(\u_dll/u_control/_0601_ ),
    .B1(\u_dll/u_control/out_of_range ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1681_  (.B1(\u_dll/u_control/_0600_ ),
    .Y(\u_dll/u_control/_0338_ ),
    .A1(\u_dll/u_control/_0503_ ),
    .A2(\u_dll/u_control/_0601_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1682_  (.A(\u_dll/u_control/net40 ),
    .B(\u_dll/u_control/missing_meta ),
    .Y(\u_dll/u_control/_0164_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1683_  (.A(\u_dll/u_control/reference_missing ),
    .B(\u_dll/u_control/net40 ),
    .Y(\u_dll/u_control/_0162_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1684_  (.A(\u_dll/u_control/net36 ),
    .B(\u_dll/u_control/_0902_ ),
    .Y(\u_dll/u_control/_0131_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1685_  (.A(\u_dll/u_control/net36 ),
    .B(\u_dll/u_control/_0908_ ),
    .Y(\u_dll/u_control/_0129_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1686_  (.B(\u_dll/u_control/net3 ),
    .C(\u_dll/u_control/_0907_ ),
    .A(\u_dll/u_control/net6 ),
    .Y(\u_dll/u_control/_0602_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1687_  (.B(\u_dll/u_control/_0893_ ),
    .C(\u_dll/u_control/_0127_ ),
    .A(\u_dll/u_control/net5 ),
    .Y(\u_dll/u_control/_0603_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1688_  (.B1(\u_dll/u_control/_0928_ ),
    .Y(\u_dll/u_control/_0117_ ),
    .A1(\u_dll/u_control/_0602_ ),
    .A2(\u_dll/u_control/_0603_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1689_  (.A(\u_dll/u_control/_0877_ ),
    .B(\u_dll/u_control/net36 ),
    .Y(\u_dll/u_control/_0043_ ));
 sg13cmos5l_and4_1 \u_dll/u_control/_1690_  (.A(\u_dll/u_control/_0103_ ),
    .B(net126),
    .C(\u_dll/u_control/locked_qualified ),
    .D(\u_dll/u_control/_0118_ ),
    .X(\u_dll/locked ));
 sg13cmos5l_tiehi \u_dll/u_control/_1690__126  (.L_HI(net126));
 sg13cmos5l_and2_1 \u_dll/u_control/_1691_  (.A(\u_dll/u_control/update_pending[0] ),
    .B(\u_dll/u_control/_0959_ ),
    .X(\u_dll/u_control/_0076_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1692_  (.A(\u_dll/u_control/update_pending[1] ),
    .B(\u_dll/u_control/_0959_ ),
    .X(\u_dll/u_control/_0077_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1693_  (.A(\u_dll/u_control/net14 ),
    .B(\u_dll/u_control/_0418_ ),
    .Y(\u_dll/u_control/_0075_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1694_  (.A(\u_dll/u_control/window_count[0] ),
    .B(\u_dll/u_control/net15 ),
    .Y(\u_dll/u_control/_0079_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1695_  (.Y(\u_dll/u_control/_0604_ ),
    .A(\u_dll/u_control/window_count[1] ),
    .B(\u_dll/u_control/window_count[0] ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1696_  (.A(\u_dll/u_control/net15 ),
    .B(\u_dll/u_control/_0604_ ),
    .Y(\u_dll/u_control/_0080_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1697_  (.A1(\u_dll/u_control/window_count[1] ),
    .A2(\u_dll/u_control/window_count[0] ),
    .Y(\u_dll/u_control/_0605_ ),
    .B1(\u_dll/u_control/window_count[2] ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1698_  (.A(\u_dll/u_control/_0934_ ),
    .B(\u_dll/u_control/net15 ),
    .C(\u_dll/u_control/_0605_ ),
    .Y(\u_dll/u_control/_0081_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1699_  (.A(\u_dll/u_control/window_count[3] ),
    .B(\u_dll/u_control/_0934_ ),
    .Y(\u_dll/u_control/_0606_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1700_  (.A(\u_dll/u_control/_0935_ ),
    .B(\u_dll/u_control/_0958_ ),
    .C(\u_dll/u_control/_0606_ ),
    .Y(\u_dll/u_control/_0082_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1701_  (.Y(\u_dll/u_control/_0607_ ),
    .A(\u_dll/u_control/window_count[4] ),
    .B(\u_dll/u_control/_0935_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1702_  (.A(\u_dll/u_control/net15 ),
    .B(\u_dll/u_control/_0607_ ),
    .Y(\u_dll/u_control/_0083_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1703_  (.B(\u_dll/u_control/_0936_ ),
    .A(\u_dll/u_control/window_count[5] ),
    .X(\u_dll/u_control/_0608_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1704_  (.A(\u_dll/u_control/_0958_ ),
    .B(\u_dll/u_control/_0608_ ),
    .Y(\u_dll/u_control/_0084_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1705_  (.B(\u_dll/u_control/_0937_ ),
    .A(\u_dll/u_control/window_count[6] ),
    .X(\u_dll/u_control/_0609_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1706_  (.A(\u_dll/u_control/_0958_ ),
    .B(\u_dll/u_control/_0609_ ),
    .Y(\u_dll/u_control/_0085_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1707_  (.B(\u_dll/u_control/update_pending[2] ),
    .C(\u_dll/u_control/_0957_ ),
    .A(\u_dll/u_control/net50 ),
    .Y(\u_dll/u_control/_0610_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1708_  (.A1(\u_dll/u_control/good_windows[2] ),
    .A2(\u_dll/u_control/_0942_ ),
    .Y(\u_dll/u_control/_0611_ ),
    .B1(\u_dll/u_control/_0610_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1709_  (.Y(\u_dll/u_control/_0612_ ),
    .B(\u_dll/u_control/good_windows[0] ),
    .A_N(\u_dll/u_control/good_windows[2] ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1710_  (.Y(\u_dll/u_control/_0613_ ),
    .A(\u_dll/u_control/good_windows[0] ),
    .B(\u_dll/u_control/good_windows[2] ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1711_  (.A(\u_dll/u_control/_0942_ ),
    .B_N(\u_dll/u_control/good_windows[0] ),
    .Y(\u_dll/u_control/_0614_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1712_  (.Y(\u_dll/u_control/_0615_ ),
    .B1(\u_dll/u_control/_0614_ ),
    .B2(\u_dll/u_control/_0449_ ),
    .A2(\u_dll/u_control/_0613_ ),
    .A1(\u_dll/u_control/_0611_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1713_  (.A(\u_dll/u_control/_0551_ ),
    .B(\u_dll/u_control/_0615_ ),
    .Y(\u_dll/u_control/_0023_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1714_  (.Y(\u_dll/u_control/_0616_ ),
    .A(\u_dll/u_control/good_windows[1] ),
    .B(\u_dll/u_control/_0612_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1715_  (.Y(\u_dll/u_control/_0617_ ),
    .A(\u_dll/u_control/_0611_ ),
    .B(\u_dll/u_control/_0616_ ));
 sg13cmos5l_nand3b_1 \u_dll/u_control/_1716_  (.B(\u_dll/u_control/good_windows[1] ),
    .C(\u_dll/u_control/_0959_ ),
    .Y(\u_dll/u_control/_0618_ ),
    .A_N(\u_dll/u_control/update_pending[2] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1717_  (.B1(\u_dll/u_control/_0618_ ),
    .Y(\u_dll/u_control/_0024_ ),
    .A1(\u_dll/u_control/_0550_ ),
    .A2(\u_dll/u_control/_0617_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1718_  (.X(\u_dll/u_control/_0619_ ),
    .B(\u_dll/u_control/_0610_ ),
    .A(\u_dll/u_control/_0550_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1719_  (.Y(\u_dll/u_control/_0620_ ),
    .A(\u_dll/u_control/good_windows[2] ),
    .B(\u_dll/u_control/_0449_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1720_  (.A1(\u_dll/u_control/good_windows[0] ),
    .A2(\u_dll/u_control/good_windows[1] ),
    .Y(\u_dll/u_control/_0621_ ),
    .B1(\u_dll/u_control/good_windows[2] ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1721_  (.B2(\u_dll/u_control/_0620_ ),
    .C1(\u_dll/u_control/_0621_ ),
    .B1(\u_dll/u_control/_0619_ ),
    .A1(\u_dll/u_control/good_windows[2] ),
    .Y(\u_dll/u_control/_0025_ ),
    .A2(\u_dll/u_control/_0942_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1722_  (.B1(\u_dll/u_control/locked_qualified ),
    .Y(\u_dll/u_control/_0622_ ),
    .A1(\u_dll/u_control/_0938_ ),
    .A2(\u_dll/u_control/_0941_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1723_  (.X(\u_dll/u_control/_0623_ ),
    .B(\u_dll/u_control/_0621_ ),
    .A(\u_dll/u_control/_0619_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1724_  (.Y(\u_dll/u_control/_0624_ ),
    .A(\u_dll/u_control/multiply_cfg[2] ),
    .B(\u_dll/u_control/_0481_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1725_  (.Y(\u_dll/u_control/_0625_ ),
    .B(\u_dll/u_control/_0624_ ),
    .A_N(\u_dll/u_control/_0477_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1726_  (.Y(\u_dll/u_control/_0626_ ),
    .B(\u_dll/u_control/error_magnitude[0] ),
    .A_N(\u_dll/u_control/multiply_cfg[0] ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1727_  (.Y(\u_dll/u_control/_0627_ ),
    .A(\u_dll/u_control/multiply_cfg[1] ),
    .B(\u_dll/u_control/_0626_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1728_  (.Y(\u_dll/u_control/_0628_ ),
    .A(\u_dll/u_control/_0480_ ),
    .B(\u_dll/u_control/_0627_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1729_  (.B1(\u_dll/u_control/_0628_ ),
    .Y(\u_dll/u_control/_0629_ ),
    .A1(\u_dll/u_control/multiply_cfg[1] ),
    .A2(\u_dll/u_control/_0626_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1730_  (.A(\u_dll/u_control/net45 ),
    .B(\u_dll/u_control/_0472_ ),
    .Y(\u_dll/u_control/_0630_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1731_  (.B2(\u_dll/u_control/_0629_ ),
    .C1(\u_dll/u_control/_0630_ ),
    .B1(\u_dll/u_control/_0625_ ),
    .A1(\u_dll/u_control/_0756_ ),
    .Y(\u_dll/u_control/_0631_ ),
    .A2(\u_dll/u_control/_0481_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1732_  (.B2(\u_dll/u_control/net43 ),
    .C1(\u_dll/u_control/_0631_ ),
    .B1(\u_dll/u_control/_0475_ ),
    .A1(\u_dll/u_control/net46 ),
    .Y(\u_dll/u_control/_0632_ ),
    .A2(\u_dll/u_control/_0472_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1733_  (.B1(\u_dll/u_control/_0549_ ),
    .Y(\u_dll/u_control/_0633_ ),
    .A1(\u_dll/u_control/net43 ),
    .A2(\u_dll/u_control/_0475_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1734_  (.A(\u_dll/u_control/_0610_ ),
    .B(\u_dll/u_control/_0632_ ),
    .C(\u_dll/u_control/_0633_ ),
    .Y(\u_dll/u_control/_0634_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1735_  (.B(\u_dll/u_control/_0471_ ),
    .C(\u_dll/u_control/_0634_ ),
    .A(\u_dll/u_control/_0467_ ),
    .Y(\u_dll/u_control/_0635_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1736_  (.A1(\u_dll/u_control/saturated_windows[1] ),
    .A2(\u_dll/u_control/_0501_ ),
    .Y(\u_dll/u_control/_0636_ ),
    .B1(\u_dll/u_control/_0635_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1737_  (.A(\u_dll/u_control/_0552_ ),
    .B(\u_dll/u_control/_0636_ ),
    .Y(\u_dll/u_control/_0637_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1738_  (.A1(\u_dll/u_control/_0622_ ),
    .A2(\u_dll/u_control/_0623_ ),
    .Y(\u_dll/u_control/_0045_ ),
    .B1(\u_dll/u_control/_0637_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1739_  (.A(\u_dll/u_control/update_pending[0] ),
    .B_N(\u_dll/u_control/ring_alive ),
    .Y(\u_dll/u_control/_0638_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1740_  (.A1(\u_dll/u_control/update_pending[0] ),
    .A2(\u_dll/u_control/_0548_ ),
    .Y(\u_dll/u_control/_0639_ ),
    .B1(\u_dll/u_control/_0638_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1741_  (.A(\u_dll/u_control/_0942_ ),
    .B(\u_dll/u_control/net14 ),
    .C(\u_dll/u_control/_0639_ ),
    .Y(\u_dll/u_control/_0051_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1742_  (.A(\u_dll/u_control/net42 ),
    .B_N(\u_dll/u_control/net46 ),
    .Y(\u_dll/u_control/_0640_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1743_  (.Y(\u_dll/u_control/_0641_ ),
    .B1(\u_dll/u_control/_0640_ ),
    .B2(\u_dll/u_control/error_magnitude[0] ),
    .A2(\u_dll/u_control/_0480_ ),
    .A1(\u_dll/u_control/net42 ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1744_  (.Y(\u_dll/u_control/_0642_ ),
    .B(\u_dll/u_control/_0470_ ),
    .A_N(\u_dll/u_control/net43 ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1745_  (.B2(\u_dll/u_control/net35 ),
    .C1(\u_dll/u_control/_0468_ ),
    .B1(\u_dll/u_control/_0474_ ),
    .A1(\u_dll/u_control/_0943_ ),
    .Y(\u_dll/u_control/_0643_ ),
    .A2(\u_dll/u_control/_0469_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1746_  (.X(\u_dll/u_control/_0644_ ),
    .A(\u_dll/u_control/_0467_ ),
    .B(\u_dll/u_control/_0642_ ),
    .C(\u_dll/u_control/_0643_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1747_  (.Y(\u_dll/u_control/_0645_ ),
    .A(\u_dll/u_control/_0644_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1748_  (.A(\u_dll/u_control/_0641_ ),
    .B(\u_dll/u_control/_0645_ ),
    .Y(\u_dll/u_control/_0646_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1749_  (.A(\u_dll/u_control/net40 ),
    .B(\u_dll/u_control/_0641_ ),
    .C(\u_dll/u_control/_0645_ ),
    .Y(\u_dll/u_control/_0054_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1750_  (.Y(\u_dll/u_control/_0647_ ),
    .A(\u_dll/u_control/net56 ),
    .B(\u_dll/u_control/_0646_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1751_  (.Y(\u_dll/u_control/_0648_ ),
    .B1(\u_dll/u_control/_0480_ ),
    .B2(\u_dll/u_control/_0640_ ),
    .A2(\u_dll/u_control/_0943_ ),
    .A1(\u_dll/u_control/error_magnitude[0] ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1752_  (.A(\u_dll/u_control/net35 ),
    .B(\u_dll/u_control/_0648_ ),
    .Y(\u_dll/u_control/_0649_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1753_  (.A1(\u_dll/u_control/net42 ),
    .A2(\u_dll/u_control/_0481_ ),
    .Y(\u_dll/u_control/_0650_ ),
    .B1(\u_dll/u_control/_0649_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1754_  (.B1(\u_dll/u_control/_0647_ ),
    .Y(\u_dll/u_control/_0651_ ),
    .A1(\u_dll/u_control/_0645_ ),
    .A2(\u_dll/u_control/_0650_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1755_  (.B1(\u_dll/u_control/net51 ),
    .Y(\u_dll/u_control/_0652_ ),
    .A1(\u_dll/u_control/_0647_ ),
    .A2(\u_dll/u_control/_0650_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1756_  (.A(\u_dll/u_control/_0652_ ),
    .B_N(\u_dll/u_control/_0651_ ),
    .Y(\u_dll/u_control/_0055_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1757_  (.Y(\u_dll/u_control/_0653_ ),
    .B1(\u_dll/u_control/_0481_ ),
    .B2(\u_dll/u_control/_0640_ ),
    .A2(\u_dll/u_control/_0480_ ),
    .A1(\u_dll/u_control/_0943_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1758_  (.Y(\u_dll/u_control/_0654_ ),
    .B1(\u_dll/u_control/_0473_ ),
    .B2(\u_dll/u_control/net42 ),
    .A2(\u_dll/u_control/net35 ),
    .A1(\u_dll/u_control/error_magnitude[0] ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1759_  (.B1(\u_dll/u_control/_0654_ ),
    .Y(\u_dll/u_control/_0655_ ),
    .A1(\u_dll/u_control/net35 ),
    .A2(\u_dll/u_control/_0653_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1760_  (.Y(\u_dll/u_control/_0656_ ),
    .A(\u_dll/u_control/_0641_ ),
    .B(\u_dll/u_control/_0650_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1761_  (.A1(\u_dll/u_control/net56 ),
    .A2(\u_dll/u_control/_0656_ ),
    .Y(\u_dll/u_control/_0657_ ),
    .B1(\u_dll/u_control/_0655_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1762_  (.X(\u_dll/u_control/_0658_ ),
    .A(\u_dll/u_control/net56 ),
    .B(\u_dll/u_control/_0655_ ),
    .C(\u_dll/u_control/_0656_ ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1763_  (.A(\u_dll/u_control/net40 ),
    .B(\u_dll/u_control/_0645_ ),
    .C(\u_dll/u_control/_0657_ ),
    .D(\u_dll/u_control/_0658_ ),
    .Y(\u_dll/u_control/_0056_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1764_  (.X(\u_dll/u_control/_0659_ ),
    .B(\u_dll/u_control/_0656_ ),
    .A(\u_dll/u_control/_0655_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1765_  (.Y(\u_dll/u_control/_0660_ ),
    .A(\u_dll/u_control/_0644_ ),
    .B(\u_dll/u_control/_0659_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1766_  (.B(\u_dll/u_control/_0644_ ),
    .C(\u_dll/u_control/_0659_ ),
    .A(\u_dll/u_control/net56 ),
    .Y(\u_dll/u_control/_0661_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1767_  (.Y(\u_dll/u_control/_0662_ ),
    .B1(\u_dll/u_control/_0640_ ),
    .B2(\u_dll/u_control/_0472_ ),
    .A2(\u_dll/u_control/_0624_ ),
    .A1(\u_dll/u_control/_0943_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1768_  (.Y(\u_dll/u_control/_0663_ ),
    .B1(\u_dll/u_control/_0662_ ),
    .B2(\u_dll/u_control/_0476_ ),
    .A2(\u_dll/u_control/_0480_ ),
    .A1(\u_dll/u_control/net35 ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1769_  (.Y(\u_dll/u_control/_0664_ ),
    .B(\u_dll/u_control/_0644_ ),
    .A_N(\u_dll/u_control/_0663_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1770_  (.B1(\u_dll/u_control/net51 ),
    .Y(\u_dll/u_control/_0665_ ),
    .A1(\u_dll/u_control/_0661_ ),
    .A2(\u_dll/u_control/_0663_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1771_  (.A1(\u_dll/u_control/_0661_ ),
    .A2(\u_dll/u_control/_0664_ ),
    .Y(\u_dll/u_control/_0057_ ),
    .B1(\u_dll/u_control/_0665_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1772_  (.Y(\u_dll/u_control/_0666_ ),
    .A(\u_dll/u_control/_0474_ ),
    .B(\u_dll/u_control/_0640_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1773_  (.B2(\u_dll/u_control/_0943_ ),
    .C1(\u_dll/u_control/net35 ),
    .B1(\u_dll/u_control/_0473_ ),
    .A1(\u_dll/u_control/net43 ),
    .Y(\u_dll/u_control/_0667_ ),
    .A2(\u_dll/u_control/_0469_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1774_  (.B1(\u_dll/u_control/_0644_ ),
    .Y(\u_dll/u_control/_0668_ ),
    .A1(\u_dll/u_control/_0945_ ),
    .A2(\u_dll/u_control/_0481_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1775_  (.A1(\u_dll/u_control/_0666_ ),
    .A2(\u_dll/u_control/_0667_ ),
    .Y(\u_dll/u_control/_0669_ ),
    .B1(\u_dll/u_control/_0668_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1776_  (.Y(\u_dll/u_control/_0670_ ),
    .A(\u_dll/u_control/_0660_ ),
    .B(\u_dll/u_control/_0664_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1777_  (.A1(\u_dll/u_control/_0660_ ),
    .A2(\u_dll/u_control/_0664_ ),
    .Y(\u_dll/u_control/_0671_ ),
    .B1(\u_dll/u_control/_0760_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1778_  (.B1(\u_dll/u_control/net51 ),
    .Y(\u_dll/u_control/_0672_ ),
    .A1(\u_dll/u_control/_0669_ ),
    .A2(\u_dll/u_control/_0671_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1779_  (.A1(\u_dll/u_control/_0669_ ),
    .A2(\u_dll/u_control/_0671_ ),
    .Y(\u_dll/u_control/_0058_ ),
    .B1(\u_dll/u_control/_0672_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1780_  (.Y(\u_dll/u_control/_0673_ ),
    .B1(\u_dll/u_control/_0640_ ),
    .B2(\u_dll/u_control/_0469_ ),
    .A2(\u_dll/u_control/_0474_ ),
    .A1(\u_dll/u_control/_0943_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1781_  (.Y(\u_dll/u_control/_0674_ ),
    .B1(\u_dll/u_control/_0473_ ),
    .B2(\u_dll/u_control/net35 ),
    .A2(\u_dll/u_control/_0470_ ),
    .A1(\u_dll/u_control/net43 ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1782_  (.B1(\u_dll/u_control/_0674_ ),
    .Y(\u_dll/u_control/_0675_ ),
    .A1(\u_dll/u_control/_0944_ ),
    .A2(\u_dll/u_control/_0673_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1783_  (.Y(\u_dll/u_control/_0676_ ),
    .A(\u_dll/u_control/_0644_ ),
    .B(\u_dll/u_control/_0675_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1784_  (.X(\u_dll/u_control/_0677_ ),
    .B(\u_dll/u_control/_0670_ ),
    .A(\u_dll/u_control/_0669_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1785_  (.Y(\u_dll/u_control/_0678_ ),
    .A(\u_dll/u_control/net56 ),
    .B(\u_dll/u_control/_0677_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1786_  (.B1(\u_dll/u_control/net51 ),
    .Y(\u_dll/u_control/_0679_ ),
    .A1(\u_dll/u_control/_0676_ ),
    .A2(\u_dll/u_control/_0678_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1787_  (.A1(\u_dll/u_control/_0676_ ),
    .A2(\u_dll/u_control/_0678_ ),
    .Y(\u_dll/u_control/_0059_ ),
    .B1(\u_dll/u_control/_0679_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1788_  (.A(\u_dll/u_control/_0645_ ),
    .B(\u_dll/u_control/_0675_ ),
    .C(\u_dll/u_control/_0677_ ),
    .Y(\u_dll/u_control/_0680_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1789_  (.A(\u_dll/u_control/net41 ),
    .B(\u_dll/u_control/_0760_ ),
    .C(\u_dll/u_control/_0680_ ),
    .Y(\u_dll/u_control/_0061_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1790_  (.A2(\u_dll/u_control/_0645_ ),
    .A1(\u_dll/u_control/net51 ),
    .B1(\u_dll/u_control/_0061_ ),
    .X(\u_dll/u_control/_0060_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1791_  (.A(\u_dll/u_control/cycles[0] ),
    .B(\u_dll/u_control/net49 ),
    .X(\u_dll/u_control/_0009_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1792_  (.A(\u_dll/u_control/cycles[1] ),
    .B(\u_dll/u_control/net49 ),
    .X(\u_dll/u_control/_0014_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1793_  (.A(\u_dll/u_control/cycles[2] ),
    .B(\u_dll/u_control/net50 ),
    .X(\u_dll/u_control/_0015_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1794_  (.A(\u_dll/u_control/cycles[3] ),
    .B(\u_dll/u_control/net49 ),
    .X(\u_dll/u_control/_0016_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1795_  (.A(\u_dll/u_control/cycles[4] ),
    .B(\u_dll/u_control/net49 ),
    .X(\u_dll/u_control/_0017_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1796_  (.A(\u_dll/u_control/cycles[5] ),
    .B(\u_dll/u_control/net49 ),
    .X(\u_dll/u_control/_0018_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1797_  (.A(\u_dll/u_control/cycles[6] ),
    .B(\u_dll/u_control/net49 ),
    .X(\u_dll/u_control/_0019_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1798_  (.A(\u_dll/u_control/cycles[7] ),
    .B_N(\u_dll/u_control/multiply_cfg[0] ),
    .Y(\u_dll/u_control/_0681_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1799_  (.Y(\u_dll/u_control/_0682_ ),
    .A(\u_dll/u_control/cycles[7] ),
    .B(\u_dll/u_control/multiply_cfg[0] ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1800_  (.A(\u_dll/u_control/net41 ),
    .B(\u_dll/u_control/_0682_ ),
    .Y(\u_dll/u_control/_0020_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1801_  (.B(\u_dll/u_control/multiply_cfg[1] ),
    .A(\u_dll/u_control/cycles[8] ),
    .X(\u_dll/u_control/_0683_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1802_  (.A(\u_dll/u_control/_0681_ ),
    .B(\u_dll/u_control/_0683_ ),
    .X(\u_dll/u_control/_0684_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1803_  (.A(\u_dll/u_control/_0681_ ),
    .B(\u_dll/u_control/_0683_ ),
    .Y(\u_dll/u_control/_0685_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1804_  (.A(\u_dll/u_control/net41 ),
    .B(\u_dll/u_control/_0684_ ),
    .C(\u_dll/u_control/_0685_ ),
    .Y(\u_dll/u_control/_0021_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1805_  (.A1(\u_dll/u_control/cycles[8] ),
    .A2(\u_dll/u_control/_0757_ ),
    .Y(\u_dll/u_control/_0686_ ),
    .B1(\u_dll/u_control/_0685_ ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1806_  (.B(\u_dll/u_control/multiply_cfg[2] ),
    .A(\u_dll/u_control/cycles[9] ),
    .X(\u_dll/u_control/_0687_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1807_  (.A(\u_dll/u_control/_0686_ ),
    .B(\u_dll/u_control/_0687_ ),
    .X(\u_dll/u_control/_0688_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1808_  (.A(\u_dll/u_control/_0686_ ),
    .B(\u_dll/u_control/_0687_ ),
    .Y(\u_dll/u_control/_0689_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1809_  (.A(\u_dll/u_control/net41 ),
    .B(\u_dll/u_control/_0688_ ),
    .C(\u_dll/u_control/_0689_ ),
    .Y(\u_dll/u_control/_0022_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1810_  (.A1(\u_dll/u_control/cycles[9] ),
    .A2(\u_dll/u_control/_0756_ ),
    .Y(\u_dll/u_control/_0690_ ),
    .B1(\u_dll/u_control/_0689_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1811_  (.Y(\u_dll/u_control/_0691_ ),
    .B(\u_dll/u_control/cycles[10] ),
    .A_N(\u_dll/u_control/net46 ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1812_  (.B(\u_dll/u_control/net46 ),
    .A(\u_dll/u_control/cycles[10] ),
    .X(\u_dll/u_control/_0692_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1813_  (.X(\u_dll/u_control/_0693_ ),
    .B(\u_dll/u_control/_0692_ ),
    .A(\u_dll/u_control/_0690_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1814_  (.Y(\u_dll/u_control/_0694_ ),
    .A(\u_dll/u_control/net50 ),
    .B(\u_dll/u_control/_0693_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1815_  (.A1(\u_dll/u_control/_0690_ ),
    .A2(\u_dll/u_control/_0692_ ),
    .Y(\u_dll/u_control/_0010_ ),
    .B1(\u_dll/u_control/_0694_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1816_  (.A(\u_dll/u_control/_0691_ ),
    .B(\u_dll/u_control/_0693_ ),
    .X(\u_dll/u_control/_0695_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1817_  (.Y(\u_dll/u_control/_0696_ ),
    .B(\u_dll/u_control/cycles[11] ),
    .A_N(\u_dll/u_control/net44 ));
 sg13cmos5l_xor2_1 \u_dll/u_control/_1818_  (.B(\u_dll/u_control/net44 ),
    .A(\u_dll/u_control/cycles[11] ),
    .X(\u_dll/u_control/_0697_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1819_  (.B1(\u_dll/u_control/net48 ),
    .Y(\u_dll/u_control/_0698_ ),
    .A1(\u_dll/u_control/_0695_ ),
    .A2(\u_dll/u_control/_0697_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1820_  (.A1(\u_dll/u_control/_0695_ ),
    .A2(\u_dll/u_control/_0697_ ),
    .Y(\u_dll/u_control/_0011_ ),
    .B1(\u_dll/u_control/_0698_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1821_  (.B1(\u_dll/u_control/_0696_ ),
    .Y(\u_dll/u_control/_0699_ ),
    .A1(\u_dll/u_control/_0695_ ),
    .A2(\u_dll/u_control/_0697_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1822_  (.A(\u_dll/u_control/cycles[12] ),
    .B(\u_dll/u_control/net40 ),
    .C(\u_dll/u_control/_0699_ ),
    .Y(\u_dll/u_control/_0013_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1823_  (.B(\u_dll/u_control/net48 ),
    .C(\u_dll/u_control/_0699_ ),
    .A(\u_dll/u_control/cycles[12] ),
    .Y(\u_dll/u_control/_0700_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1824_  (.Y(\u_dll/u_control/_0012_ ),
    .B(\u_dll/u_control/_0700_ ),
    .A_N(\u_dll/u_control/_0013_ ));
 sg13cmos5l_nor4_1 \u_dll/u_control/_1825_  (.A(\u_dll/u_control/_0868_ ),
    .B(\u_dll/u_control/net5 ),
    .C(\u_dll/u_control/net2 ),
    .D(\u_dll/u_control/_0908_ ),
    .Y(\u_dll/u_control/_0701_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1826_  (.A2(\u_dll/u_control/_0933_ ),
    .A1(\u_dll/u_control/_0878_ ),
    .B1(\u_dll/u_control/_0701_ ),
    .X(\u_dll/u_control/_0702_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1827_  (.A(\u_dll/u_control/net2 ),
    .B(\u_dll/u_control/_0918_ ),
    .Y(\u_dll/u_control/_0703_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_control/_1828_  (.Y(\u_dll/u_control/_0704_ ),
    .B(\u_dll/u_control/net3 ),
    .A_N(\u_dll/u_control/_0918_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1829_  (.X(\u_dll/u_control/_0705_ ),
    .A(\u_dll/u_control/net6 ),
    .B(\u_dll/u_control/net4 ),
    .C(\u_dll/u_control/_0911_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1830_  (.B(\u_dll/u_control/_0891_ ),
    .C(\u_dll/u_control/_0911_ ),
    .A(\u_dll/u_control/_0869_ ),
    .Y(\u_dll/u_control/_0706_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1831_  (.B1(\u_dll/u_control/net37 ),
    .Y(\u_dll/u_control/_0707_ ),
    .A1(\u_dll/u_control/_0703_ ),
    .A2(\u_dll/u_control/_0706_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1832_  (.B2(\u_dll/u_control/_0705_ ),
    .C1(\u_dll/u_control/_0896_ ),
    .B1(\u_dll/u_control/_0704_ ),
    .A1(\u_dll/u_control/_0916_ ),
    .Y(\u_dll/u_control/_0064_ ),
    .A2(\u_dll/u_control/_0702_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1833_  (.A(\u_dll/u_control/_0876_ ),
    .B(\u_dll/u_control/_0883_ ),
    .C(\u_dll/u_control/_0891_ ),
    .Y(\u_dll/u_control/_0708_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1834_  (.B(\u_dll/u_control/net2 ),
    .C(\u_dll/u_control/_0911_ ),
    .A(\u_dll/u_control/_0869_ ),
    .Y(\u_dll/u_control/_0709_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1835_  (.A1(\u_dll/u_control/_0911_ ),
    .A2(\u_dll/u_control/_0921_ ),
    .Y(\u_dll/u_control/_0710_ ),
    .B1(\u_dll/u_control/_0893_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1836_  (.B2(\u_dll/u_control/_0708_ ),
    .C1(\u_dll/u_control/_0893_ ),
    .B1(\u_dll/u_control/_0924_ ),
    .A1(\u_dll/u_control/_0911_ ),
    .Y(\u_dll/u_control/_0711_ ),
    .A2(\u_dll/u_control/_0921_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1837_  (.B1(\u_dll/u_control/net37 ),
    .Y(\u_dll/u_control/_0712_ ),
    .A1(\u_dll/u_control/net5 ),
    .A2(\u_dll/u_control/_0894_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1838_  (.Y(\u_dll/u_control/_0713_ ),
    .A(\u_dll/u_control/net37 ),
    .B(\u_dll/u_control/_0706_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1839_  (.A1(\u_dll/u_control/_0923_ ),
    .A2(\u_dll/u_control/_0705_ ),
    .Y(\u_dll/u_control/_0714_ ),
    .B1(\u_dll/u_control/net36 ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1840_  (.A(\u_dll/u_control/_0711_ ),
    .B_N(\u_dll/u_control/_0714_ ),
    .Y(\u_dll/u_control/_0063_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1841_  (.B(\u_dll/u_control/net38 ),
    .C(\u_dll/u_control/net4 ),
    .A(\u_dll/u_control/_0868_ ),
    .Y(\u_dll/u_control/_0715_ ),
    .D(\u_dll/u_control/_0703_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1842_  (.B2(\u_dll/u_control/_0715_ ),
    .C1(\u_dll/u_control/_0894_ ),
    .B1(\u_dll/u_control/_0712_ ),
    .A1(\u_dll/u_control/_0878_ ),
    .Y(\u_dll/u_control/_0074_ ),
    .A2(\u_dll/u_control/net3 ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1843_  (.B2(\u_dll/u_control/_0884_ ),
    .C1(\u_dll/u_control/_0893_ ),
    .B1(\u_dll/u_control/_0701_ ),
    .A1(\u_dll/u_control/_0911_ ),
    .Y(\u_dll/u_control/_0716_ ),
    .A2(\u_dll/u_control/_0919_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1844_  (.X(\u_dll/u_control/_0717_ ),
    .A(\u_dll/u_control/_0894_ ),
    .B(\u_dll/u_control/_0916_ ),
    .C(\u_dll/u_control/_0709_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1845_  (.A(\u_dll/u_control/_0713_ ),
    .B(\u_dll/u_control/_0716_ ),
    .C(\u_dll/u_control/_0717_ ),
    .Y(\u_dll/u_control/_0073_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1846_  (.B(\u_dll/u_control/_0908_ ),
    .C(\u_dll/u_control/_0915_ ),
    .A(\u_dll/u_control/_0877_ ),
    .Y(\u_dll/u_control/_0718_ ),
    .D(\u_dll/u_control/_0919_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1847_  (.A1(\u_dll/u_control/_0878_ ),
    .A2(\u_dll/u_control/_0703_ ),
    .Y(\u_dll/u_control/_0719_ ),
    .B1(\u_dll/u_control/_0894_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1848_  (.X(\u_dll/u_control/_0072_ ),
    .A(\u_dll/u_control/_0714_ ),
    .B(\u_dll/u_control/_0718_ ),
    .C(\u_dll/u_control/_0719_ ));
 sg13cmos5l_nand3b_1 \u_dll/u_control/_1849_  (.B(\u_dll/u_control/_0915_ ),
    .C(\u_dll/u_control/_0884_ ),
    .Y(\u_dll/u_control/_0720_ ),
    .A_N(\u_dll/u_control/net4 ));
 sg13cmos5l_or3_1 \u_dll/u_control/_1850_  (.A(\u_dll/u_control/_0909_ ),
    .B(\u_dll/u_control/_0920_ ),
    .C(\u_dll/u_control/_0720_ ),
    .X(\u_dll/u_control/_0721_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1851_  (.B(\u_dll/u_control/net37 ),
    .C(\u_dll/u_control/net3 ),
    .A(\u_dll/u_control/_0868_ ),
    .Y(\u_dll/u_control/_0722_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1852_  (.Y(\u_dll/u_control/_0071_ ),
    .B1(\u_dll/u_control/_0722_ ),
    .B2(\u_dll/u_control/_0712_ ),
    .A2(\u_dll/u_control/_0721_ ),
    .A1(\u_dll/u_control/_0711_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1853_  (.B1(\u_dll/u_control/_0705_ ),
    .Y(\u_dll/u_control/_0723_ ),
    .A1(\u_dll/u_control/_0930_ ),
    .A2(\u_dll/u_control/_0931_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1854_  (.A(\u_dll/u_control/_0895_ ),
    .B(\u_dll/u_control/_0723_ ),
    .X(\u_dll/u_control/_0070_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1855_  (.A(\u_dll/u_control/_0707_ ),
    .B(\u_dll/u_control/_0716_ ),
    .Y(\u_dll/u_control/_0069_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1856_  (.B1(\u_dll/u_control/_0903_ ),
    .Y(\u_dll/u_control/_0724_ ),
    .A1(\u_dll/u_control/_0907_ ),
    .A2(\u_dll/u_control/_0915_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1857_  (.A(\u_dll/u_control/_0876_ ),
    .B(\u_dll/u_control/_0894_ ),
    .C(\u_dll/u_control/_0724_ ),
    .Y(\u_dll/u_control/_0725_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1858_  (.A(\u_dll/u_control/_0710_ ),
    .B(\u_dll/u_control/_0713_ ),
    .C(\u_dll/u_control/_0725_ ),
    .Y(\u_dll/u_control/_0068_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1859_  (.A(\u_dll/u_control/net5 ),
    .B(\u_dll/u_control/_0894_ ),
    .C(\u_dll/u_control/_0925_ ),
    .Y(\u_dll/u_control/_0726_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1860_  (.X(\u_dll/u_control/_0727_ ),
    .B(\u_dll/u_control/_0724_ ),
    .A(\u_dll/u_control/_0896_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1861_  (.Y(\u_dll/u_control/_0067_ ),
    .B1(\u_dll/u_control/_0727_ ),
    .B2(\u_dll/u_control/_0897_ ),
    .A2(\u_dll/u_control/_0726_ ),
    .A1(\u_dll/u_control/net6 ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1862_  (.B2(\u_dll/u_control/_0878_ ),
    .C1(\u_dll/u_control/_0896_ ),
    .B1(\u_dll/u_control/_0933_ ),
    .A1(\u_dll/u_control/_0877_ ),
    .Y(\u_dll/u_control/_0066_ ),
    .A2(\u_dll/u_control/_0919_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1863_  (.X(\u_dll/u_control/_0728_ ),
    .B(\u_dll/u_control/_0926_ ),
    .A(\u_dll/u_control/_0923_ ));
 sg13cmos5l_or3_1 \u_dll/u_control/_1864_  (.A(\u_dll/u_control/_0909_ ),
    .B(\u_dll/u_control/_0931_ ),
    .C(\u_dll/u_control/_0720_ ),
    .X(\u_dll/u_control/_0729_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_control/_1865_  (.Y(\u_dll/u_control/_0065_ ),
    .B1(\u_dll/u_control/_0729_ ),
    .B2(\u_dll/u_control/_0716_ ),
    .A2(\u_dll/u_control/_0728_ ),
    .A1(\u_dll/u_control/_0712_ ));
 sg13cmos5l_a221oi_1 \u_dll/u_control/_1866_  (.B2(\u_dll/u_control/_0926_ ),
    .C1(\u_dll/u_control/_0726_ ),
    .B1(\u_dll/u_control/_0712_ ),
    .A1(\u_dll/u_control/_0894_ ),
    .Y(\u_dll/u_control/_0062_ ),
    .A2(\u_dll/u_control/_0709_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1867_  (.A(\u_dll/u_control/_0884_ ),
    .B(\u_dll/u_control/net36 ),
    .Y(\u_dll/u_control/_0044_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1868_  (.B1(\u_dll/u_control/net39 ),
    .Y(\u_dll/u_control/_0730_ ),
    .A1(\u_dll/u_control/tuning_q8 [0]),
    .A2(\u_dll/u_control/density[0] ));
 sg13cmos5l_nor2b_1 \u_dll/u_control/_1869_  (.A(\u_dll/u_control/_0730_ ),
    .B_N(\u_dll/u_control/_0774_ ),
    .Y(\u_dll/u_control/_0001_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1870_  (.B1(\u_dll/u_control/net39 ),
    .Y(\u_dll/u_control/_0731_ ),
    .A1(\u_dll/u_control/_0774_ ),
    .A2(\u_dll/u_control/_0775_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1871_  (.A1(\u_dll/u_control/_0774_ ),
    .A2(\u_dll/u_control/_0775_ ),
    .Y(\u_dll/u_control/_0002_ ),
    .B1(\u_dll/u_control/_0731_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1872_  (.B1(\u_dll/u_control/net39 ),
    .Y(\u_dll/u_control/_0732_ ),
    .A1(\u_dll/u_control/_0776_ ),
    .A2(\u_dll/u_control/_0777_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1873_  (.A1(\u_dll/u_control/_0776_ ),
    .A2(\u_dll/u_control/_0777_ ),
    .Y(\u_dll/u_control/_0003_ ),
    .B1(\u_dll/u_control/_0732_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1874_  (.Y(\u_dll/u_control/_0733_ ),
    .A(\u_dll/u_control/tuning_q8 [3]),
    .B(\u_dll/u_control/density[3] ));
 sg13cmos5l_xnor2_1 \u_dll/u_control/_1875_  (.Y(\u_dll/u_control/_0734_ ),
    .A(\u_dll/u_control/_0778_ ),
    .B(\u_dll/u_control/_0733_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1876_  (.A(\u_dll/u_control/net36 ),
    .B(\u_dll/u_control/_0734_ ),
    .Y(\u_dll/u_control/_0004_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1877_  (.B1(\u_dll/u_control/_0770_ ),
    .Y(\u_dll/u_control/_0735_ ),
    .A1(\u_dll/u_control/_0771_ ),
    .A2(\u_dll/u_control/_0779_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1878_  (.X(\u_dll/u_control/_0005_ ),
    .A(\u_dll/u_control/_0780_ ),
    .B(\u_dll/u_control/net39 ),
    .C(\u_dll/u_control/_0735_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1879_  (.X(\u_dll/u_control/_0736_ ),
    .A(\u_dll/u_control/_0769_ ),
    .B(\u_dll/u_control/_0780_ ),
    .C(\u_dll/u_control/_0781_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1880_  (.A(\u_dll/u_control/_0782_ ),
    .B(\u_dll/u_control/_0886_ ),
    .C(\u_dll/u_control/_0736_ ),
    .Y(\u_dll/u_control/_0006_ ));
 sg13cmos5l_nor3_1 \u_dll/u_control/_1881_  (.A(\u_dll/u_control/_0768_ ),
    .B(\u_dll/u_control/_0782_ ),
    .C(\u_dll/u_control/_0784_ ),
    .Y(\u_dll/u_control/_0737_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1882_  (.Y(\u_dll/u_control/_0738_ ),
    .A(\u_dll/u_control/_0785_ ),
    .B(\u_dll/u_control/net38 ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1883_  (.A(\u_dll/u_control/_0737_ ),
    .B(\u_dll/u_control/_0738_ ),
    .Y(\u_dll/u_control/_0007_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1884_  (.B(\u_dll/u_control/_0785_ ),
    .C(\u_dll/u_control/_0787_ ),
    .A(\u_dll/u_control/_0767_ ),
    .Y(\u_dll/u_control/_0739_ ));
 sg13cmos5l_and3_1 \u_dll/u_control/_1885_  (.X(\u_dll/u_control/_0008_ ),
    .A(\u_dll/u_control/_0789_ ),
    .B(\u_dll/u_control/net38 ),
    .C(\u_dll/u_control/_0739_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1886_  (.A(\u_dll/u_control/net27 ),
    .B(\u_dll/u_control/qualified_meta ),
    .X(\u_dll/u_control/_0047_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1887_  (.A(\u_dll/u_control/net27 ),
    .B(\u_dll/u_control/locked_qualified ),
    .X(\u_dll/u_control/_0046_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1888_  (.A(\u_dll/u_control/net27 ),
    .B(\u_dll/u_control/heartbeat_sync[0] ),
    .X(\u_dll/u_control/_0034_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1889_  (.A(\u_dll/u_control/net27 ),
    .B(\u_dll/u_control/heartbeat_sync[1] ),
    .X(\u_dll/u_control/_0035_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1890_  (.A(\u_dll/u_control/net29 ),
    .B(\u_dll/u_control/heartbeat_sync[2] ),
    .X(\u_dll/u_control/_0036_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1891_  (.A(\u_dll/u_control/net29 ),
    .B(\u_dll/u_control/heartbeat_sync[3] ),
    .X(\u_dll/u_control/_0037_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1892_  (.A(\u_dll/u_control/net27 ),
    .B(\u_dll/u_control/heartbeat_meta[0] ),
    .X(\u_dll/u_control/_0038_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1893_  (.A(\u_dll/u_control/net29 ),
    .B(\u_dll/u_control/heartbeat_meta[1] ),
    .X(\u_dll/u_control/_0039_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1894_  (.A(\u_dll/u_control/net29 ),
    .B(\u_dll/u_control/heartbeat_meta[2] ),
    .X(\u_dll/u_control/_0040_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1895_  (.A(\u_dll/u_control/net29 ),
    .B(\u_dll/u_control/heartbeat_meta[3] ),
    .X(\u_dll/u_control/_0041_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1896_  (.A(\u_dll/u_control/net27 ),
    .B(\u_dll/u_control/heartbeat[0] ),
    .X(\u_dll/u_control/_0030_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1897_  (.A(\u_dll/u_control/net29 ),
    .B(\u_dll/u_control/heartbeat[1] ),
    .X(\u_dll/u_control/_0031_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1898_  (.A(\u_dll/u_control/net29 ),
    .B(\u_dll/u_control/heartbeat[2] ),
    .X(\u_dll/u_control/_0032_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1899_  (.A(\u_dll/u_control/ring_reset_pipe[1] ),
    .B(\u_dll/u_control/_0764_ ),
    .Y(\u_dll/u_control/_0033_ ));
 sg13cmos5l_and4_1 \u_dll/u_control/_1900_  (.A(\u_dll/u_control/watchdog[11] ),
    .B(\u_dll/u_control/watchdog[10] ),
    .C(\u_dll/u_control/watchdog[9] ),
    .D(\u_dll/u_control/watchdog[6] ),
    .X(\u_dll/u_control/_0740_ ));
 sg13cmos5l_nand4_1 \u_dll/u_control/_1901_  (.B(\u_dll/u_control/watchdog[7] ),
    .C(\u_dll/u_control/_1040_ ),
    .A(\u_dll/u_control/watchdog[8] ),
    .Y(\u_dll/u_control/_0741_ ),
    .D(\u_dll/u_control/_0740_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1902_  (.A1(\u_dll/u_control/_0762_ ),
    .A2(\u_dll/u_control/_0741_ ),
    .Y(\u_dll/u_control/_0078_ ),
    .B1(\u_dll/u_control/net20 ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1903_  (.A(\u_dll/u_control/net40 ),
    .B(\u_dll/u_control/ref_count[0] ),
    .Y(\u_dll/u_control/_0048_ ));
 sg13cmos5l_or2_1 \u_dll/u_control/_1904_  (.X(\u_dll/u_control/_0742_ ),
    .B(\u_dll/u_control/ref_count[1] ),
    .A(\u_dll/u_control/ref_count[0] ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1905_  (.Y(\u_dll/u_control/_0743_ ),
    .A(\u_dll/u_control/net47 ),
    .B(\u_dll/u_control/_0742_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1906_  (.A1(\u_dll/u_control/ref_count[0] ),
    .A2(\u_dll/u_control/ref_count[1] ),
    .Y(\u_dll/u_control/_0049_ ),
    .B1(\u_dll/u_control/_0743_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1907_  (.A1(\u_dll/u_control/ref_count[0] ),
    .A2(\u_dll/u_control/ref_count[1] ),
    .Y(\u_dll/u_control/_0744_ ),
    .B1(\u_dll/u_control/ref_count[2] ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1908_  (.B(\u_dll/u_control/ref_count[1] ),
    .C(\u_dll/u_control/ref_count[2] ),
    .A(\u_dll/u_control/ref_count[0] ),
    .Y(\u_dll/u_control/_0745_ ));
 sg13cmos5l_nand2_1 \u_dll/u_control/_1909_  (.Y(\u_dll/u_control/_0746_ ),
    .A(\u_dll/u_control/net47 ),
    .B(\u_dll/u_control/_0745_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1910_  (.A(\u_dll/u_control/_0744_ ),
    .B(\u_dll/u_control/_0746_ ),
    .Y(\u_dll/u_control/_0050_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1911_  (.B1(\u_dll/u_control/net47 ),
    .Y(\u_dll/u_control/_0747_ ),
    .A1(\u_dll/u_control/_0764_ ),
    .A2(\u_dll/u_control/_0745_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1912_  (.A1(\u_dll/u_control/_0764_ ),
    .A2(\u_dll/u_control/_0745_ ),
    .Y(\u_dll/u_control/_0029_ ),
    .B1(\u_dll/u_control/_0747_ ));
 sg13cmos5l_nor2_1 \u_dll/u_control/_1913_  (.A(\u_dll/u_control/net40 ),
    .B(\u_dll/u_control/ref_count[1] ),
    .Y(\u_dll/u_control/_0026_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1914_  (.B1(\u_dll/u_control/net47 ),
    .Y(\u_dll/u_control/_0748_ ),
    .A1(\u_dll/u_control/ref_count[2] ),
    .A2(\u_dll/u_control/_0742_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1915_  (.A1(\u_dll/u_control/ref_count[2] ),
    .A2(\u_dll/u_control/_0742_ ),
    .Y(\u_dll/u_control/_0027_ ),
    .B1(\u_dll/u_control/_0748_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_control/_1916_  (.B1(\u_dll/u_control/net47 ),
    .Y(\u_dll/u_control/_0749_ ),
    .A1(\u_dll/u_control/_0764_ ),
    .A2(\u_dll/u_control/_0744_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_control/_1917_  (.A1(\u_dll/u_control/_0764_ ),
    .A2(\u_dll/u_control/_0744_ ),
    .Y(\u_dll/u_control/_0028_ ),
    .B1(\u_dll/u_control/_0749_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1918_  (.A(\u_dll/u_control/net48 ),
    .B(\u_dll/u_control/sample_meta ),
    .X(\u_dll/u_control/_0053_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1919_  (.A(\u_dll/u_control/sample_toggle ),
    .B(\u_dll/u_control/net48 ),
    .X(\u_dll/u_control/_0052_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1920_  (.A(\u_dll/u_control/net28 ),
    .B(\u_dll/u_control/window_meta ),
    .X(\u_dll/u_control/_0087_ ));
 sg13cmos5l_and2_1 \u_dll/u_control/_1921_  (.A(\u_dll/u_control/window_toggle ),
    .B(\u_dll/u_control/net28 ),
    .X(\u_dll/u_control/_0086_ ));
 sg13cmos5l_nand3_1 \u_dll/u_control/_1922_  (.B(\u_dll/u_control/ring_count[9] ),
    .C(\u_dll/u_control/ring_count[8] ),
    .A(\u_dll/u_control/ring_count[10] ),
    .Y(\u_dll/u_control/_0750_ ));
 sg13cmos5l_nor4_2 \u_dll/u_control/_1923_  (.A(\u_dll/u_control/ring_count[12] ),
    .B(\u_dll/u_control/_0752_ ),
    .C(\u_dll/u_control/_0967_ ),
    .Y(\u_dll/u_control/_0751_ ),
    .D(\u_dll/u_control/_0750_ ));
 sg13cmos5l_a21o_1 \u_dll/u_control/_1924_  (.A2(\u_dll/u_control/net26 ),
    .A1(\u_dll/u_control/net33 ),
    .B1(\u_dll/u_control/_0751_ ),
    .X(\u_dll/u_control/_0000_ ));
 sg13cmos5l_buf_1 \u_dll/u_control/_1925_  (.A(\u_dll/u_control/net44 ),
    .X(\u_dll/u_control/_0360_ ));
 sg13cmos5l_buf_1 \u_dll/u_control/_1926_  (.A(\u_dll/u_control/net45 ),
    .X(\u_dll/u_control/_0359_ ));
 sg13cmos5l_buf_1 \u_dll/u_control/_1927_  (.A(\u_dll/u_control/multiply_cfg[2] ),
    .X(\u_dll/u_control/_0358_ ));
 sg13cmos5l_buf_1 \u_dll/u_control/_1928_  (.A(\u_dll/u_control/multiply_cfg[1] ),
    .X(\u_dll/u_control/_0357_ ));
 sg13cmos5l_buf_1 \u_dll/u_control/_1929_  (.A(\u_dll/u_control/multiply_cfg[0] ),
    .X(\u_dll/u_control/_0356_ ));
 sg13cmos5l_buf_1 \u_dll/u_control/_1930_  (.A(\u_dll/u_control/_0097_ ),
    .X(\u_dll/u_control/_0175_ ));
 sg13cmos5l_buf_1 \u_dll/u_control/_1931_  (.A(\u_dll/u_control/_0095_ ),
    .X(\u_dll/u_control/_0171_ ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1932_  (.Y(\u_dll/u_control/_0119_ ),
    .A(\u_dll/u_control/net86 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1933_  (.Y(\u_dll/u_control/_0120_ ),
    .A(\u_dll/u_control/net87 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1934_  (.Y(\u_dll/u_control/_0121_ ),
    .A(\u_dll/u_control/net87 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1935_  (.Y(\u_dll/u_control/_0122_ ),
    .A(\u_dll/u_control/net92 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1936_  (.Y(\u_dll/u_control/_0123_ ),
    .A(\u_dll/u_control/net92 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1937_  (.Y(\u_dll/u_control/_0124_ ),
    .A(\u_dll/u_control/net94 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1938_  (.Y(\u_dll/u_control/_0125_ ),
    .A(\u_dll/u_control/net94 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1939_  (.Y(\u_dll/u_control/_0126_ ),
    .A(\u_dll/u_control/net94 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1940_  (.Y(\u_dll/u_control/_0128_ ),
    .A(\u_dll/u_control/net90 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1941_  (.Y(\u_dll/u_control/_0130_ ),
    .A(\u_dll/u_control/net90 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1942_  (.Y(\u_dll/u_control/_0132_ ),
    .A(\u_dll/u_control/net91 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1943_  (.Y(\u_dll/u_control/_0133_ ),
    .A(\u_dll/u_control/net90 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1944_  (.Y(\u_dll/u_control/_0134_ ),
    .A(\u_dll/u_control/net90 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1945_  (.Y(\u_dll/u_control/_0136_ ),
    .A(\u_dll/u_control/net90 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1946_  (.Y(\u_dll/u_control/_0137_ ),
    .A(\u_dll/u_control/net90 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1947_  (.Y(\u_dll/u_control/_0138_ ),
    .A(\u_dll/u_control/net67 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1948_  (.Y(\u_dll/u_control/_0139_ ),
    .A(\u_dll/u_control/net65 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1949_  (.Y(\u_dll/u_control/_0140_ ),
    .A(\u_dll/u_control/net62 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1950_  (.Y(\u_dll/u_control/_0141_ ),
    .A(\u_dll/u_control/net65 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1951_  (.Y(\u_dll/u_control/_0142_ ),
    .A(\u_dll/u_control/net67 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1952_  (.Y(\u_dll/u_control/_0143_ ),
    .A(\u_dll/u_control/net67 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1953_  (.Y(\u_dll/u_control/_0144_ ),
    .A(\u_dll/u_control/net65 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1954_  (.Y(\u_dll/u_control/_0145_ ),
    .A(\u_dll/u_control/net65 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1955_  (.Y(\u_dll/u_control/_0146_ ),
    .A(\u_dll/u_control/net67 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1956_  (.Y(\u_dll/u_control/_0147_ ),
    .A(\u_dll/u_control/net67 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1957_  (.Y(\u_dll/u_control/_0148_ ),
    .A(\u_dll/u_control/net68 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1958_  (.Y(\u_dll/u_control/_0149_ ),
    .A(\u_dll/u_control/net68 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1959_  (.Y(\u_dll/u_control/_0150_ ),
    .A(\u_dll/u_control/net65 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1960_  (.Y(\u_dll/u_control/_0151_ ),
    .A(\u_dll/u_control/net66 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1961_  (.Y(\u_dll/u_control/_0152_ ),
    .A(\u_dll/u_control/net68 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1962_  (.Y(\u_dll/u_control/_0153_ ),
    .A(\u_dll/u_control/net67 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1963_  (.Y(\u_dll/u_control/_0154_ ),
    .A(\u_dll/u_control/net65 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1964_  (.Y(\u_dll/u_control/_0155_ ),
    .A(\u_dll/u_control/net62 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1965_  (.Y(\u_dll/u_control/_0156_ ),
    .A(\u_dll/u_control/net62 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1966_  (.Y(\u_dll/u_control/_0157_ ),
    .A(\u_dll/u_control/net67 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1967_  (.Y(\u_dll/u_control/_0158_ ),
    .A(\u_dll/u_control/net65 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1968_  (.Y(\u_dll/u_control/_0159_ ),
    .A(\u_dll/u_control/net64 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1969_  (.Y(\u_dll/u_control/_0160_ ),
    .A(\u_dll/u_control/net74 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1970_  (.Y(\u_dll/u_control/_0161_ ),
    .A(\u_dll/u_control/net75 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1971_  (.Y(\u_dll/u_control/_0163_ ),
    .A(\u_dll/u_control/net75 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1972_  (.Y(\u_dll/u_control/_0165_ ),
    .A(\u_dll/u_control/net75 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1973_  (.Y(\u_dll/u_control/_0166_ ),
    .A(\u_dll/u_control/net75 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1974_  (.Y(\u_dll/u_control/_0167_ ),
    .A(\u_dll/u_control/net74 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1975_  (.Y(\u_dll/u_control/_0168_ ),
    .A(\u_dll/u_control/net63 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1976_  (.Y(\u_dll/u_control/_0170_ ),
    .A(\u_dll/u_control/net86 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1977_  (.Y(\u_dll/u_control/_0172_ ),
    .A(\u_dll/u_control/net86 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1978_  (.Y(\u_dll/u_control/_0174_ ),
    .A(\u_dll/u_control/net62 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1979_  (.Y(\u_dll/u_control/_0176_ ),
    .A(\u_dll/u_control/net64 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1980_  (.Y(\u_dll/u_control/_0177_ ),
    .A(\u_dll/u_control/net83 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1981_  (.Y(\u_dll/u_control/_0178_ ),
    .A(\u_dll/u_control/net83 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1982_  (.Y(\u_dll/u_control/_0179_ ),
    .A(\u_dll/u_control/net84 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1983_  (.Y(\u_dll/u_control/_0180_ ),
    .A(\u_dll/u_control/net84 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1984_  (.Y(\u_dll/u_control/_0181_ ),
    .A(\u_dll/u_control/net84 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1985_  (.Y(\u_dll/u_control/_0182_ ),
    .A(\u_dll/u_control/net85 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1986_  (.Y(\u_dll/u_control/_0183_ ),
    .A(\u_dll/u_control/net75 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1987_  (.Y(\u_dll/u_control/_0184_ ),
    .A(\u_dll/u_control/net76 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1988_  (.Y(\u_dll/u_control/_0185_ ),
    .A(\u_dll/u_control/net85 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1989_  (.Y(\u_dll/u_control/_0186_ ),
    .A(\u_dll/u_control/net87 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1990_  (.Y(\u_dll/u_control/_0187_ ),
    .A(\u_dll/u_control/net87 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1991_  (.Y(\u_dll/u_control/_0188_ ),
    .A(\u_dll/u_control/net87 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1992_  (.Y(\u_dll/u_control/_0189_ ),
    .A(\u_dll/u_control/net93 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1993_  (.Y(\u_dll/u_control/_0190_ ),
    .A(\u_dll/u_control/net93 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1994_  (.Y(\u_dll/u_control/_0191_ ),
    .A(\u_dll/u_control/net93 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1995_  (.Y(\u_dll/u_control/_0192_ ),
    .A(\u_dll/u_control/net93 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1996_  (.Y(\u_dll/u_control/_0193_ ),
    .A(\u_dll/u_control/net93 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1997_  (.Y(\u_dll/u_control/_0194_ ),
    .A(\u_dll/u_control/net94 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1998_  (.Y(\u_dll/u_control/_0195_ ),
    .A(\u_dll/u_control/net94 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_1999_  (.Y(\u_dll/u_control/_0196_ ),
    .A(\u_dll/u_control/net94 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2000_  (.Y(\u_dll/u_control/_0197_ ),
    .A(\u_dll/u_control/net95 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2001_  (.Y(\u_dll/u_control/_0198_ ),
    .A(\u_dll/u_control/net92 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2002_  (.Y(\u_dll/u_control/_0199_ ),
    .A(\u_dll/u_control/net95 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2003_  (.Y(\u_dll/u_control/_0200_ ),
    .A(\u_dll/u_control/net83 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2004_  (.Y(\u_dll/u_control/_0201_ ),
    .A(\u_dll/u_control/net83 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2005_  (.Y(\u_dll/u_control/_0202_ ),
    .A(\u_dll/u_control/net83 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2006_  (.Y(\u_dll/u_control/_0203_ ),
    .A(\u_dll/u_control/net84 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2007_  (.Y(\u_dll/u_control/_0204_ ),
    .A(\u_dll/u_control/net83 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2008_  (.Y(\u_dll/u_control/_0205_ ),
    .A(\u_dll/u_control/net92 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2009_  (.Y(\u_dll/u_control/_0206_ ),
    .A(\u_dll/u_control/net86 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2010_  (.Y(\u_dll/u_control/_0207_ ),
    .A(\u_dll/u_control/net71 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2011_  (.Y(\u_dll/u_control/_0208_ ),
    .A(\u_dll/u_control/net71 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2012_  (.Y(\u_dll/u_control/_0209_ ),
    .A(\u_dll/u_control/net83 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2013_  (.Y(\u_dll/u_control/_0210_ ),
    .A(\u_dll/u_control/net71 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2014_  (.Y(\u_dll/u_control/_0211_ ),
    .A(\u_dll/u_control/net71 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2015_  (.Y(\u_dll/u_control/_0212_ ),
    .A(\u_dll/u_control/net71 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2016_  (.Y(\u_dll/u_control/_0213_ ),
    .A(\u_dll/u_control/net72 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2017_  (.Y(\u_dll/u_control/_0214_ ),
    .A(\u_dll/u_control/net72 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2018_  (.Y(\u_dll/u_control/_0215_ ),
    .A(\u_dll/u_control/net74 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2019_  (.Y(\u_dll/u_control/_0216_ ),
    .A(\u_dll/u_control/net74 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2020_  (.Y(\u_dll/u_control/_0217_ ),
    .A(\u_dll/u_control/net76 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2021_  (.Y(\u_dll/u_control/_0218_ ),
    .A(\u_dll/u_control/net74 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2022_  (.Y(\u_dll/u_control/_0219_ ),
    .A(\u_dll/u_control/net74 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2023_  (.Y(\u_dll/u_control/_0220_ ),
    .A(\u_dll/u_control/net68 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2024_  (.Y(\u_dll/u_control/_0221_ ),
    .A(\u_dll/net80 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2025_  (.Y(\u_dll/u_control/_0222_ ),
    .A(\u_dll/net80 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2026_  (.Y(\u_dll/u_control/_0223_ ),
    .A(\u_dll/net80 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2027_  (.Y(\u_dll/u_control/_0224_ ),
    .A(\u_dll/u_control/net79 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2028_  (.Y(\u_dll/u_control/_0225_ ),
    .A(\u_dll/u_control/net79 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2029_  (.Y(\u_dll/u_control/_0226_ ),
    .A(\u_dll/u_control/net79 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2030_  (.Y(\u_dll/u_control/_0227_ ),
    .A(\u_dll/net80 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2031_  (.Y(\u_dll/u_control/_0228_ ),
    .A(\u_dll/u_control/net66 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2032_  (.Y(\u_dll/u_control/_0229_ ),
    .A(\u_dll/u_control/net66 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2033_  (.Y(\u_dll/u_control/_0230_ ),
    .A(\u_dll/u_control/net66 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2034_  (.Y(\u_dll/u_control/_0231_ ),
    .A(\u_dll/u_control/net66 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2035_  (.Y(\u_dll/u_control/_0232_ ),
    .A(\u_dll/u_control/net65 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2036_  (.Y(\u_dll/u_control/_0233_ ),
    .A(\u_dll/net80 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2037_  (.Y(\u_dll/u_control/_0234_ ),
    .A(\u_dll/u_control/net74 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2038_  (.Y(\u_dll/u_control/_0235_ ),
    .A(\u_dll/u_control/net70 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2039_  (.Y(\u_dll/u_control/_0236_ ),
    .A(\u_dll/u_control/net70 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2040_  (.Y(\u_dll/u_control/_0237_ ),
    .A(\u_dll/u_control/net71 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2041_  (.Y(\u_dll/u_control/_0238_ ),
    .A(\u_dll/u_control/net71 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2042_  (.Y(\u_dll/u_control/_0239_ ),
    .A(\u_dll/u_control/net71 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2043_  (.Y(\u_dll/u_control/_0240_ ),
    .A(\u_dll/u_control/net70 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2044_  (.Y(\u_dll/u_control/_0241_ ),
    .A(\u_dll/u_control/net70 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2045_  (.Y(\u_dll/u_control/_0242_ ),
    .A(\u_dll/u_control/net70 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2046_  (.Y(\u_dll/u_control/_0243_ ),
    .A(\u_dll/u_control/net70 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2047_  (.Y(\u_dll/u_control/_0244_ ),
    .A(\u_dll/u_control/net63 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2048_  (.Y(\u_dll/u_control/_0245_ ),
    .A(\u_dll/u_control/net73 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2049_  (.Y(\u_dll/u_control/_0246_ ),
    .A(\u_dll/u_control/net67 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2050_  (.Y(\u_dll/u_control/_0247_ ),
    .A(\u_dll/u_control/net74 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2051_  (.Y(\u_dll/u_control/_0248_ ),
    .A(\u_dll/u_control/net62 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2052_  (.Y(\u_dll/u_control/_0249_ ),
    .A(\u_dll/u_control/net62 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2053_  (.Y(\u_dll/u_control/_0250_ ),
    .A(\u_dll/u_control/net63 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2054_  (.Y(\u_dll/u_control/_0251_ ),
    .A(\u_dll/u_control/net63 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2055_  (.Y(\u_dll/u_control/_0252_ ),
    .A(\u_dll/u_control/net70 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2056_  (.Y(\u_dll/u_control/_0253_ ),
    .A(\u_dll/u_control/net70 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2057_  (.Y(\u_dll/u_control/_0254_ ),
    .A(\u_dll/u_control/net63 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2058_  (.Y(\u_dll/u_control/_0255_ ),
    .A(\u_dll/u_control/net63 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2059_  (.Y(\u_dll/u_control/_0256_ ),
    .A(\u_dll/u_control/net62 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2060_  (.Y(\u_dll/u_control/_0257_ ),
    .A(\u_dll/u_control/net62 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2061_  (.Y(\u_dll/u_control/_0258_ ),
    .A(\u_dll/u_control/net64 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2062_  (.Y(\u_dll/u_control/_0259_ ),
    .A(\u_dll/u_control/net63 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2063_  (.Y(\u_dll/u_control/_0260_ ),
    .A(\u_dll/u_control/net64 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2064_  (.Y(\u_dll/u_control/_0261_ ),
    .A(\u_dll/u_control/net63 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2065_  (.Y(\u_dll/u_control/_0262_ ),
    .A(\u_dll/u_control/net88 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2066_  (.Y(\u_dll/u_control/_0263_ ),
    .A(\u_dll/u_control/net85 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2067_  (.Y(\u_dll/u_control/_0264_ ),
    .A(\u_dll/u_control/net92 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2068_  (.Y(\u_dll/u_control/_0265_ ),
    .A(\u_dll/u_control/net89 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2069_  (.Y(\u_dll/u_control/_0266_ ),
    .A(\u_dll/u_control/net89 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2070_  (.Y(\u_dll/u_control/_0267_ ),
    .A(\u_dll/u_control/net89 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2071_  (.Y(\u_dll/u_control/_0268_ ),
    .A(\u_dll/u_control/net89 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2072_  (.Y(\u_dll/u_control/_0269_ ),
    .A(\u_dll/u_control/net89 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2073_  (.Y(\u_dll/u_control/_0270_ ),
    .A(\u_dll/u_control/net91 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2074_  (.Y(\u_dll/u_control/_0272_ ),
    .A(\u_dll/u_control/net81 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2075_  (.Y(\u_dll/u_control/_0273_ ),
    .A(\u_dll/u_control/net91 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2076_  (.Y(\u_dll/u_control/_0274_ ),
    .A(\u_dll/u_control/net88 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2077_  (.Y(\u_dll/u_control/_0275_ ),
    .A(\u_dll/u_control/net91 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2078_  (.Y(\u_dll/u_control/_0276_ ),
    .A(\u_dll/u_control/net88 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2079_  (.Y(\u_dll/u_control/_0277_ ),
    .A(\u_dll/u_control/net88 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2080_  (.Y(\u_dll/u_control/_0278_ ),
    .A(\u_dll/u_control/net88 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2081_  (.Y(\u_dll/u_control/_0279_ ),
    .A(\u_dll/u_control/net84 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2082_  (.Y(\u_dll/u_control/_0280_ ),
    .A(\u_dll/u_control/net84 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2083_  (.Y(\u_dll/u_control/_0281_ ),
    .A(\u_dll/u_control/net83 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2084_  (.Y(\u_dll/u_control/_0282_ ),
    .A(\u_dll/u_control/net72 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2085_  (.Y(\u_dll/u_control/_0283_ ),
    .A(\u_dll/u_control/net72 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2086_  (.Y(\u_dll/u_control/_0284_ ),
    .A(\u_dll/u_control/net76 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2087_  (.Y(\u_dll/u_control/_0285_ ),
    .A(\u_dll/u_control/net76 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2088_  (.Y(\u_dll/u_control/_0286_ ),
    .A(\u_dll/u_control/net85 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2089_  (.Y(\u_dll/u_control/_0287_ ),
    .A(\u_dll/u_control/net85 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2090_  (.Y(\u_dll/u_control/_0288_ ),
    .A(\u_dll/u_control/net85 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2091_  (.Y(\u_dll/u_control/_0289_ ),
    .A(\u_dll/u_control/net76 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2092_  (.Y(\u_dll/u_control/_0290_ ),
    .A(\u_dll/u_control/net76 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2093_  (.Y(\u_dll/u_control/_0291_ ),
    .A(\u_dll/u_control/net76 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2094_  (.Y(\u_dll/u_control/_0292_ ),
    .A(\u_dll/u_control/net77 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2095_  (.Y(\u_dll/u_control/_0293_ ),
    .A(\u_dll/u_control/net87 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2096_  (.Y(\u_dll/u_control/_0294_ ),
    .A(\u_dll/u_control/net86 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2097_  (.Y(\u_dll/u_control/_0295_ ),
    .A(\u_dll/u_control/net86 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2098_  (.Y(\u_dll/u_control/_0296_ ),
    .A(\u_dll/u_control/net86 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2099_  (.Y(\u_dll/u_control/_0297_ ),
    .A(\u_dll/u_control/net86 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2100_  (.Y(\u_dll/u_control/_0298_ ),
    .A(\u_dll/u_control/net92 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2101_  (.Y(\u_dll/u_control/_0299_ ),
    .A(\u_dll/u_control/net92 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2102_  (.Y(\u_dll/u_control/_0300_ ),
    .A(\u_dll/u_control/net92 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2103_  (.Y(\u_dll/u_control/_0301_ ),
    .A(\u_dll/u_control/net88 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2104_  (.Y(\u_dll/u_control/_0302_ ),
    .A(\u_dll/u_control/net88 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2105_  (.Y(\u_dll/u_control/_0303_ ),
    .A(\u_dll/u_control/net88 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2106_  (.Y(\u_dll/u_control/_0304_ ),
    .A(\u_dll/u_control/net81 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2107_  (.Y(\u_dll/u_control/_0305_ ),
    .A(\u_dll/u_control/net90 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2108_  (.Y(\u_dll/u_control/_0306_ ),
    .A(\u_dll/u_control/net81 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2109_  (.Y(\u_dll/u_control/_0307_ ),
    .A(\u_dll/u_control/net81 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2110_  (.Y(\u_dll/u_control/_0308_ ),
    .A(\u_dll/u_control/net79 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2111_  (.Y(\u_dll/u_control/_0309_ ),
    .A(\u_dll/u_control/net79 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2112_  (.Y(\u_dll/u_control/_0310_ ),
    .A(\u_dll/u_control/net81 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2113_  (.Y(\u_dll/u_control/_0311_ ),
    .A(\u_dll/u_control/net79 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2114_  (.Y(\u_dll/u_control/_0312_ ),
    .A(\u_dll/u_control/net75 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2115_  (.Y(\u_dll/u_control/_0313_ ),
    .A(\u_dll/u_control/net81 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2116_  (.Y(\u_dll/u_control/_0315_ ),
    .A(\u_dll/u_control/net81 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2117_  (.Y(\u_dll/u_control/_0317_ ),
    .A(\u_dll/u_control/net89 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2118_  (.Y(\u_dll/u_control/_0319_ ),
    .A(\u_dll/u_control/net81 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2119_  (.Y(\u_dll/u_control/_0321_ ),
    .A(\u_dll/u_control/net90 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2120_  (.Y(\u_dll/u_control/_0323_ ),
    .A(\u_dll/net82 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2121_  (.Y(\u_dll/u_control/_0325_ ),
    .A(\u_dll/net82 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2122_  (.Y(\u_dll/u_control/_0327_ ),
    .A(\u_dll/net82 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2123_  (.Y(\u_dll/u_control/_0329_ ),
    .A(\u_dll/u_control/net79 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2124_  (.Y(\u_dll/u_control/_0331_ ),
    .A(\u_dll/u_control/net79 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2125_  (.Y(\u_dll/u_control/_0333_ ),
    .A(\u_dll/u_control/net89 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2126_  (.Y(\u_dll/u_control/_0335_ ),
    .A(\u_dll/net80 ));
 sg13cmos5l_inv_1 \u_dll/u_control/_2127_  (.Y(\u_dll/u_control/_0337_ ),
    .A(\u_dll/u_control/net75 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2128_  (.RESET_B(\u_dll/u_control/_0182_ ),
    .D(\u_dll/u_control/_0338_ ),
    .Q(\u_dll/u_control/out_of_range ),
    .CLK(\clknet_5_24__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2129_  (.RESET_B(\u_dll/u_control/_0183_ ),
    .D(\u_dll/u_control/_0339_ ),
    .Q(\u_dll/u_control/window_toggle ),
    .CLK(\clknet_5_5__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2130_  (.RESET_B(\u_dll/u_control/_0184_ ),
    .D(\u_dll/u_control/_0340_ ),
    .Q(\u_dll/u_control/sample_previous ),
    .CLK(\clknet_5_4__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2131_  (.RESET_B(\u_dll/u_control/_0185_ ),
    .D(\u_dll/u_control/_0341_ ),
    .Q(\u_dll/u_control/window_pending ),
    .CLK(\clknet_5_6__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2132_  (.RESET_B(\u_dll/u_control/_0186_ ),
    .D(\u_dll/u_control/_0342_ ),
    .Q(\u_dll/u_control/tuning_q8 [0]),
    .CLK(\clknet_5_14__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2133_  (.RESET_B(\u_dll/u_control/_0187_ ),
    .D(\u_dll/u_control/_0343_ ),
    .Q(\u_dll/u_control/tuning_q8 [1]),
    .CLK(\clknet_5_26__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2134_  (.RESET_B(\u_dll/u_control/_0188_ ),
    .D(\u_dll/u_control/_0344_ ),
    .Q(\u_dll/u_control/tuning_q8 [2]),
    .CLK(\clknet_5_26__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2135_  (.RESET_B(\u_dll/u_control/_0189_ ),
    .D(\u_dll/u_control/_0345_ ),
    .Q(\u_dll/u_control/tuning_q8 [3]),
    .CLK(\clknet_5_27__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2136_  (.RESET_B(\u_dll/u_control/_0190_ ),
    .D(\u_dll/u_control/_0346_ ),
    .Q(\u_dll/u_control/tuning_q8 [4]),
    .CLK(\clknet_5_27__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2137_  (.RESET_B(\u_dll/u_control/_0191_ ),
    .D(\u_dll/u_control/_0347_ ),
    .Q(\u_dll/u_control/tuning_q8 [5]),
    .CLK(\clknet_5_30__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2138_  (.RESET_B(\u_dll/u_control/_0192_ ),
    .D(\u_dll/u_control/_0348_ ),
    .Q(\u_dll/u_control/tuning_q8 [6]),
    .CLK(\clknet_5_30__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2139_  (.RESET_B(\u_dll/u_control/_0193_ ),
    .D(\u_dll/u_control/_0349_ ),
    .Q(\u_dll/u_control/tuning_q8 [7]),
    .CLK(\clknet_5_29__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2140_  (.RESET_B(\u_dll/u_control/_0194_ ),
    .D(\u_dll/u_control/_0350_ ),
    .Q(\u_dll/u_control/_0099_ ),
    .CLK(\clknet_5_31__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2141_  (.RESET_B(\u_dll/u_control/_0195_ ),
    .D(\u_dll/u_control/_0351_ ),
    .Q(\u_dll/u_control/_0100_ ),
    .CLK(\clknet_5_31__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2142_  (.RESET_B(\u_dll/u_control/_0196_ ),
    .D(\u_dll/u_control/_0352_ ),
    .Q(\u_dll/u_control/_0101_ ),
    .CLK(\clknet_5_29__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2143_  (.RESET_B(\u_dll/u_control/_0197_ ),
    .D(\u_dll/u_control/_0353_ ),
    .Q(\u_dll/u_control/tuning_q8 [11]),
    .CLK(\clknet_5_29__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2144_  (.RESET_B(\u_dll/u_control/_0198_ ),
    .D(\u_dll/u_control/_0354_ ),
    .Q(\u_dll/u_control/tuning_q8 [12]),
    .CLK(\clknet_5_25__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2145_  (.RESET_B(\u_dll/u_control/_0199_ ),
    .D(\u_dll/u_control/_0355_ ),
    .Q(\u_dll/u_control/_0102_ ),
    .CLK(\clknet_5_29__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2146_  (.RESET_B(\u_dll/u_control/_0200_ ),
    .D(\u_dll/u_control/_0356_ ),
    .Q(\u_dll/u_control/multiply_previous[0] ),
    .CLK(\clknet_5_8__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2147_  (.RESET_B(\u_dll/u_control/_0201_ ),
    .D(\u_dll/u_control/_0357_ ),
    .Q(\u_dll/u_control/multiply_previous[1] ),
    .CLK(\clknet_5_11__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2148_  (.RESET_B(\u_dll/u_control/_0202_ ),
    .D(\u_dll/u_control/_0358_ ),
    .Q(\u_dll/u_control/multiply_previous[2] ),
    .CLK(\clknet_5_11__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2149_  (.RESET_B(\u_dll/u_control/_0203_ ),
    .D(\u_dll/u_control/_0359_ ),
    .Q(\u_dll/u_control/multiply_previous[3] ),
    .CLK(\clknet_5_12__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2150_  (.RESET_B(\u_dll/u_control/_0204_ ),
    .D(\u_dll/u_control/_0360_ ),
    .Q(\u_dll/u_control/multiply_previous[4] ),
    .CLK(\clknet_5_11__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2151_  (.RESET_B(\u_dll/u_control/_0205_ ),
    .D(\u_dll/u_control/_0361_ ),
    .Q(\u_dll/u_control/saturated_windows[0] ),
    .CLK(\clknet_5_25__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2152_  (.RESET_B(\u_dll/u_control/_0206_ ),
    .D(\u_dll/u_control/_0362_ ),
    .Q(\u_dll/u_control/saturated_windows[1] ),
    .CLK(\clknet_5_24__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2153_  (.RESET_B(\u_dll/u_control/_0207_ ),
    .D(\u_dll/u_control/_0363_ ),
    .Q(\u_dll/u_control/cycles[0] ),
    .CLK(\clknet_5_2__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2154_  (.RESET_B(\u_dll/u_control/_0208_ ),
    .D(\u_dll/u_control/_0364_ ),
    .Q(\u_dll/u_control/cycles[1] ),
    .CLK(\clknet_5_2__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2155_  (.RESET_B(\u_dll/u_control/_0209_ ),
    .D(\u_dll/u_control/_0365_ ),
    .Q(\u_dll/u_control/cycles[2] ),
    .CLK(\clknet_5_8__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2156_  (.RESET_B(\u_dll/u_control/_0210_ ),
    .D(\u_dll/u_control/_0366_ ),
    .Q(\u_dll/u_control/cycles[3] ),
    .CLK(\clknet_5_8__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2157_  (.RESET_B(\u_dll/u_control/_0211_ ),
    .D(\u_dll/u_control/_0367_ ),
    .Q(\u_dll/u_control/cycles[4] ),
    .CLK(\clknet_5_8__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2158_  (.RESET_B(\u_dll/u_control/_0212_ ),
    .D(\u_dll/u_control/_0368_ ),
    .Q(\u_dll/u_control/cycles[5] ),
    .CLK(\clknet_5_9__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2159_  (.RESET_B(\u_dll/u_control/_0213_ ),
    .D(\u_dll/u_control/_0369_ ),
    .Q(\u_dll/u_control/cycles[6] ),
    .CLK(\clknet_5_2__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2160_  (.RESET_B(\u_dll/u_control/_0214_ ),
    .D(\u_dll/u_control/_0370_ ),
    .Q(\u_dll/u_control/cycles[7] ),
    .CLK(\clknet_5_9__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2161_  (.RESET_B(\u_dll/u_control/_0215_ ),
    .D(\u_dll/u_control/_0371_ ),
    .Q(\u_dll/u_control/cycles[8] ),
    .CLK(\clknet_5_2__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2162_  (.RESET_B(\u_dll/u_control/_0216_ ),
    .D(\u_dll/u_control/_0372_ ),
    .Q(\u_dll/u_control/cycles[9] ),
    .CLK(\clknet_5_1__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2163_  (.RESET_B(\u_dll/u_control/_0217_ ),
    .D(\u_dll/u_control/_0373_ ),
    .Q(\u_dll/u_control/cycles[10] ),
    .CLK(\clknet_5_3__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2164_  (.RESET_B(\u_dll/u_control/_0218_ ),
    .D(\u_dll/u_control/_0374_ ),
    .Q(\u_dll/u_control/cycles[11] ),
    .CLK(\clknet_5_3__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2165_  (.RESET_B(\u_dll/u_control/_0219_ ),
    .D(\u_dll/u_control/_0375_ ),
    .Q(\u_dll/u_control/cycles[12] ),
    .CLK(\clknet_5_3__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2166_  (.RESET_B(\u_dll/u_control/_0220_ ),
    .D(\u_dll/u_control/_0376_ ),
    .Q(\u_dll/u_control/_0103_ ),
    .CLK(\clknet_4_14__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2167_  (.RESET_B(\u_dll/u_control/_0221_ ),
    .D(\u_dll/u_control/_0377_ ),
    .Q(\u_dll/u_control/watchdog[0] ),
    .CLK(\clknet_4_11__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2168_  (.RESET_B(\u_dll/u_control/_0222_ ),
    .D(\u_dll/u_control/_0378_ ),
    .Q(\u_dll/u_control/watchdog[1] ),
    .CLK(\clknet_4_11__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2169_  (.RESET_B(\u_dll/u_control/_0223_ ),
    .D(\u_dll/u_control/_0379_ ),
    .Q(\u_dll/u_control/watchdog[2] ),
    .CLK(\clknet_4_11__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2170_  (.RESET_B(\u_dll/u_control/_0224_ ),
    .D(\u_dll/u_control/_0380_ ),
    .Q(\u_dll/u_control/watchdog[3] ),
    .CLK(\clknet_4_10__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2171_  (.RESET_B(\u_dll/u_control/_0225_ ),
    .D(\u_dll/u_control/_0381_ ),
    .Q(\u_dll/u_control/watchdog[4] ),
    .CLK(\clknet_4_10__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2172_  (.RESET_B(\u_dll/u_control/_0226_ ),
    .D(\u_dll/u_control/_0382_ ),
    .Q(\u_dll/u_control/watchdog[5] ),
    .CLK(\clknet_4_11__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2173_  (.RESET_B(\u_dll/u_control/_0227_ ),
    .D(\u_dll/u_control/_0383_ ),
    .Q(\u_dll/u_control/watchdog[6] ),
    .CLK(\clknet_4_10__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2174_  (.RESET_B(\u_dll/u_control/_0228_ ),
    .D(\u_dll/u_control/_0384_ ),
    .Q(\u_dll/u_control/watchdog[7] ),
    .CLK(\clknet_4_9__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2175_  (.RESET_B(\u_dll/u_control/_0229_ ),
    .D(\u_dll/u_control/_0385_ ),
    .Q(\u_dll/u_control/watchdog[8] ),
    .CLK(\clknet_4_14__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2176_  (.RESET_B(\u_dll/u_control/_0230_ ),
    .D(\u_dll/u_control/_0386_ ),
    .Q(\u_dll/u_control/watchdog[9] ),
    .CLK(\clknet_4_9__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2177_  (.RESET_B(\u_dll/u_control/_0231_ ),
    .D(\u_dll/u_control/_0387_ ),
    .Q(\u_dll/u_control/watchdog[10] ),
    .CLK(\clknet_4_9__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2178_  (.RESET_B(\u_dll/u_control/_0232_ ),
    .D(\u_dll/u_control/_0388_ ),
    .Q(\u_dll/u_control/watchdog[11] ),
    .CLK(\clknet_4_8__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2179_  (.RESET_B(\u_dll/u_control/_0233_ ),
    .D(\u_dll/u_control/_0389_ ),
    .Q(\u_dll/u_control/watchdog_carry ),
    .CLK(\clknet_4_10__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2180_  (.RESET_B(\u_dll/u_control/_0234_ ),
    .D(\u_dll/u_control/_0390_ ),
    .Q(\u_dll/u_control/sample_toggle ),
    .CLK(\clknet_4_13__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2181_  (.RESET_B(\u_dll/u_control/_0235_ ),
    .D(\u_dll/u_control/_0391_ ),
    .Q(\u_dll/u_control/sampled_count[0] ),
    .CLK(\clknet_4_4__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2182_  (.RESET_B(\u_dll/u_control/_0236_ ),
    .D(\u_dll/u_control/_0392_ ),
    .Q(\u_dll/u_control/sampled_count[1] ),
    .CLK(\clknet_4_5__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2183_  (.RESET_B(\u_dll/u_control/_0237_ ),
    .D(\u_dll/u_control/_0393_ ),
    .Q(\u_dll/u_control/sampled_count[2] ),
    .CLK(\clknet_4_5__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2184_  (.RESET_B(\u_dll/u_control/_0238_ ),
    .D(\u_dll/u_control/_0394_ ),
    .Q(\u_dll/u_control/sampled_count[3] ),
    .CLK(\clknet_4_5__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2185_  (.RESET_B(\u_dll/u_control/_0239_ ),
    .D(\u_dll/u_control/_0395_ ),
    .Q(\u_dll/u_control/sampled_count[4] ),
    .CLK(\clknet_4_5__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2186_  (.RESET_B(\u_dll/u_control/_0240_ ),
    .D(\u_dll/u_control/_0396_ ),
    .Q(\u_dll/u_control/sampled_count[5] ),
    .CLK(\clknet_4_7__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2187_  (.RESET_B(\u_dll/u_control/_0241_ ),
    .D(\u_dll/u_control/_0397_ ),
    .Q(\u_dll/u_control/sampled_count[6] ),
    .CLK(\clknet_4_3__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2188_  (.RESET_B(\u_dll/u_control/_0242_ ),
    .D(\u_dll/u_control/_0398_ ),
    .Q(\u_dll/u_control/sampled_count[7] ),
    .CLK(\clknet_4_7__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2189_  (.RESET_B(\u_dll/u_control/_0243_ ),
    .D(\u_dll/u_control/_0399_ ),
    .Q(\u_dll/u_control/sampled_count[8] ),
    .CLK(\clknet_4_7__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2190_  (.RESET_B(\u_dll/u_control/_0244_ ),
    .D(\u_dll/u_control/_0400_ ),
    .Q(\u_dll/u_control/sampled_count[9] ),
    .CLK(\clknet_4_6__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2191_  (.RESET_B(\u_dll/u_control/_0245_ ),
    .D(\u_dll/u_control/_0401_ ),
    .Q(\u_dll/u_control/sampled_count[10] ),
    .CLK(\clknet_4_6__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2192_  (.RESET_B(\u_dll/u_control/_0246_ ),
    .D(\u_dll/u_control/_0402_ ),
    .Q(\u_dll/u_control/sampled_count[11] ),
    .CLK(\clknet_4_2__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2193_  (.RESET_B(\u_dll/u_control/_0247_ ),
    .D(\u_dll/u_control/_0403_ ),
    .Q(\u_dll/u_control/sampled_count[12] ),
    .CLK(\clknet_4_6__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2194_  (.RESET_B(\u_dll/u_control/_0248_ ),
    .D(\u_dll/u_control/_0404_ ),
    .Q(\u_dll/u_control/ring_count[0] ),
    .CLK(\clknet_4_1__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2195_  (.RESET_B(\u_dll/u_control/_0249_ ),
    .D(\u_dll/u_control/_0405_ ),
    .Q(\u_dll/u_control/ring_count[1] ),
    .CLK(\clknet_4_1__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2196_  (.RESET_B(\u_dll/u_control/_0250_ ),
    .D(\u_dll/u_control/_0406_ ),
    .Q(\u_dll/u_control/ring_count[2] ),
    .CLK(\clknet_4_1__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2197_  (.RESET_B(\u_dll/u_control/_0251_ ),
    .D(\u_dll/u_control/_0407_ ),
    .Q(\u_dll/u_control/ring_count[3] ),
    .CLK(\clknet_4_4__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2198_  (.RESET_B(\u_dll/u_control/_0252_ ),
    .D(\u_dll/u_control/_0408_ ),
    .Q(\u_dll/u_control/ring_count[4] ),
    .CLK(\clknet_4_4__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2199_  (.RESET_B(\u_dll/u_control/_0253_ ),
    .D(\u_dll/u_control/_0409_ ),
    .Q(\u_dll/u_control/ring_count[5] ),
    .CLK(\clknet_4_4__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2200_  (.RESET_B(\u_dll/u_control/_0254_ ),
    .D(\u_dll/u_control/_0410_ ),
    .Q(\u_dll/u_control/ring_count[6] ),
    .CLK(\clknet_4_3__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2201_  (.RESET_B(\u_dll/u_control/_0255_ ),
    .D(\u_dll/u_control/_0411_ ),
    .Q(\u_dll/u_control/ring_count[7] ),
    .CLK(\clknet_4_3__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2202_  (.RESET_B(\u_dll/u_control/_0256_ ),
    .D(\u_dll/u_control/_0412_ ),
    .Q(\u_dll/u_control/ring_count[8] ),
    .CLK(\clknet_4_0__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2203_  (.RESET_B(\u_dll/u_control/_0257_ ),
    .D(\u_dll/u_control/_0413_ ),
    .Q(\u_dll/u_control/ring_count[9] ),
    .CLK(\clknet_4_0__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2204_  (.RESET_B(\u_dll/u_control/_0258_ ),
    .D(\u_dll/u_control/_0414_ ),
    .Q(\u_dll/u_control/ring_count[10] ),
    .CLK(\clknet_4_2__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2205_  (.RESET_B(\u_dll/u_control/_0259_ ),
    .D(\u_dll/u_control/_0415_ ),
    .Q(\u_dll/u_control/ring_count[11] ),
    .CLK(\clknet_4_2__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2206_  (.RESET_B(\u_dll/u_control/_0260_ ),
    .D(\u_dll/u_control/_0416_ ),
    .Q(\u_dll/u_control/ring_count[12] ),
    .CLK(\clknet_4_3__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2207_  (.RESET_B(\u_dll/u_control/_0261_ ),
    .D(\u_dll/u_control/_0417_ ),
    .Q(\u_dll/u_control/low_carry ),
    .CLK(\clknet_4_1__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2208_  (.RESET_B(\u_dll/u_control/_0262_ ),
    .D(\u_dll/u_control/_0051_ ),
    .Q(\u_dll/u_control/ring_alive ),
    .CLK(\clknet_5_18__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2209_  (.RESET_B(\u_dll/u_control/_0263_ ),
    .D(\u_dll/u_control/_0045_ ),
    .Q(\u_dll/u_control/locked_qualified ),
    .CLK(\clknet_5_12__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2210_  (.RESET_B(\u_dll/u_control/_0264_ ),
    .D(\u_dll/u_control/_0079_ ),
    .Q(\u_dll/u_control/window_count[0] ),
    .CLK(\clknet_5_28__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2211_  (.RESET_B(\u_dll/u_control/_0265_ ),
    .D(\u_dll/u_control/_0080_ ),
    .Q(\u_dll/u_control/window_count[1] ),
    .CLK(\clknet_5_28__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2212_  (.RESET_B(\u_dll/u_control/_0266_ ),
    .D(\u_dll/u_control/_0081_ ),
    .Q(\u_dll/u_control/window_count[2] ),
    .CLK(\clknet_5_28__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2213_  (.RESET_B(\u_dll/u_control/_0267_ ),
    .D(\u_dll/u_control/_0082_ ),
    .Q(\u_dll/u_control/window_count[3] ),
    .CLK(\clknet_5_19__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2214_  (.RESET_B(\u_dll/u_control/_0268_ ),
    .D(\u_dll/u_control/_0083_ ),
    .Q(\u_dll/u_control/window_count[4] ),
    .CLK(\clknet_5_28__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2215_  (.RESET_B(\u_dll/u_control/_0269_ ),
    .D(\u_dll/u_control/_0084_ ),
    .Q(\u_dll/u_control/window_count[5] ),
    .CLK(\clknet_5_19__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2216_  (.RESET_B(\u_dll/u_control/_0270_ ),
    .D(\u_dll/u_control/_0085_ ),
    .Q(\u_dll/u_control/window_count[6] ),
    .CLK(\clknet_5_18__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2217_  (.RESET_B(\u_dll/u_control/_0272_ ),
    .D(\u_dll/u_control/_0271_ ),
    .Q(\u_dll/u_control/_0104_ ),
    .CLK(\clknet_5_7__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2218_  (.RESET_B(\u_dll/u_control/_0273_ ),
    .D(\u_dll/u_control/_0023_ ),
    .Q(\u_dll/u_control/good_windows[0] ),
    .CLK(\clknet_5_25__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2219_  (.RESET_B(\u_dll/u_control/_0274_ ),
    .D(\u_dll/u_control/_0024_ ),
    .Q(\u_dll/u_control/good_windows[1] ),
    .CLK(\clknet_5_18__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2220_  (.RESET_B(\u_dll/u_control/_0275_ ),
    .D(\u_dll/u_control/_0025_ ),
    .Q(\u_dll/u_control/good_windows[2] ),
    .CLK(\clknet_5_25__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2221_  (.RESET_B(\u_dll/u_control/_0276_ ),
    .D(\u_dll/u_control/_0075_ ),
    .Q(\u_dll/u_control/update_pending[0] ),
    .CLK(\clknet_5_6__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2222_  (.RESET_B(\u_dll/u_control/_0277_ ),
    .D(\u_dll/u_control/_0076_ ),
    .Q(\u_dll/u_control/update_pending[1] ),
    .CLK(\clknet_5_16__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2223_  (.RESET_B(\u_dll/u_control/_0278_ ),
    .D(\u_dll/u_control/_0077_ ),
    .Q(\u_dll/u_control/update_pending[2] ),
    .CLK(\clknet_5_18__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2224_  (.RESET_B(\u_dll/u_control/_0279_ ),
    .D(\u_dll/u_control/_0009_ ),
    .Q(\u_dll/u_control/error_magnitude[0] ),
    .CLK(\clknet_5_12__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2225_  (.RESET_B(\u_dll/u_control/_0280_ ),
    .D(\u_dll/u_control/_0014_ ),
    .Q(\u_dll/u_control/error_value[1] ),
    .CLK(\clknet_5_12__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2226_  (.RESET_B(\u_dll/u_control/_0281_ ),
    .D(\u_dll/u_control/_0015_ ),
    .Q(\u_dll/u_control/error_value[2] ),
    .CLK(\clknet_5_9__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2227_  (.RESET_B(\u_dll/u_control/_0282_ ),
    .D(\u_dll/u_control/_0016_ ),
    .Q(\u_dll/u_control/error_value[3] ),
    .CLK(\clknet_5_8__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2228_  (.RESET_B(\u_dll/u_control/_0283_ ),
    .D(\u_dll/u_control/_0017_ ),
    .Q(\u_dll/u_control/error_value[4] ),
    .CLK(\clknet_5_9__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2229_  (.RESET_B(\u_dll/u_control/_0284_ ),
    .D(\u_dll/u_control/_0018_ ),
    .Q(\u_dll/u_control/error_value[5] ),
    .CLK(\clknet_5_13__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2230_  (.RESET_B(\u_dll/u_control/_0285_ ),
    .D(\u_dll/u_control/_0019_ ),
    .Q(\u_dll/u_control/error_value[6] ),
    .CLK(\clknet_5_13__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2231_  (.RESET_B(\u_dll/u_control/_0286_ ),
    .D(\u_dll/u_control/_0020_ ),
    .Q(\u_dll/u_control/error_value[7] ),
    .CLK(\clknet_5_12__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2232_  (.RESET_B(\u_dll/u_control/_0287_ ),
    .D(\u_dll/u_control/_0021_ ),
    .Q(\u_dll/u_control/error_value[8] ),
    .CLK(\clknet_5_13__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2233_  (.RESET_B(\u_dll/u_control/_0288_ ),
    .D(\u_dll/u_control/_0022_ ),
    .Q(\u_dll/u_control/error_value[9] ),
    .CLK(\clknet_5_13__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2234_  (.RESET_B(\u_dll/u_control/_0289_ ),
    .D(\u_dll/u_control/_0010_ ),
    .Q(\u_dll/u_control/error_value[10] ),
    .CLK(\clknet_5_6__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2235_  (.RESET_B(\u_dll/u_control/_0290_ ),
    .D(\u_dll/u_control/_0011_ ),
    .Q(\u_dll/u_control/error_value[11] ),
    .CLK(\clknet_5_6__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2236_  (.RESET_B(\u_dll/u_control/_0291_ ),
    .D(\u_dll/u_control/_0012_ ),
    .Q(\u_dll/u_control/error_value[12] ),
    .CLK(\clknet_5_4__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2237_  (.RESET_B(\u_dll/u_control/_0292_ ),
    .D(\u_dll/u_control/_0013_ ),
    .Q(\u_dll/u_control/error_negative ),
    .CLK(\clknet_5_4__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2238_  (.RESET_B(\u_dll/u_control/_0293_ ),
    .D(\u_dll/u_control/_0054_ ),
    .Q(\u_dll/u_control/step_value[0] ),
    .CLK(\clknet_5_15__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2239_  (.RESET_B(\u_dll/u_control/_0294_ ),
    .D(\u_dll/u_control/_0055_ ),
    .Q(\u_dll/u_control/step_value[1] ),
    .CLK(\clknet_5_15__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2240_  (.RESET_B(\u_dll/u_control/_0295_ ),
    .D(\u_dll/u_control/_0056_ ),
    .Q(\u_dll/u_control/step_value[2] ),
    .CLK(\clknet_5_15__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2241_  (.RESET_B(\u_dll/u_control/_0296_ ),
    .D(\u_dll/u_control/_0057_ ),
    .Q(\u_dll/u_control/step_value[3] ),
    .CLK(\clknet_5_26__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2242_  (.RESET_B(\u_dll/u_control/_0297_ ),
    .D(\u_dll/u_control/_0058_ ),
    .Q(\u_dll/u_control/step_value[4] ),
    .CLK(\clknet_5_24__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2243_  (.RESET_B(\u_dll/u_control/_0298_ ),
    .D(\u_dll/u_control/_0059_ ),
    .Q(\u_dll/u_control/step_value[5] ),
    .CLK(\clknet_5_24__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2244_  (.RESET_B(\u_dll/u_control/_0299_ ),
    .D(\u_dll/u_control/_0060_ ),
    .Q(\u_dll/u_control/step_value[6] ),
    .CLK(\clknet_5_27__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2245_  (.RESET_B(\u_dll/u_control/_0300_ ),
    .D(\u_dll/u_control/_0061_ ),
    .Q(\u_dll/u_control/step_value[7] ),
    .CLK(\clknet_5_24__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2246_  (.RESET_B(\u_dll/u_control/_0301_ ),
    .D(\u_dll/u_control/_0062_ ),
    .Q(\u_dll/trim[0] ),
    .CLK(\clknet_5_16__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2247_  (.RESET_B(\u_dll/u_control/_0302_ ),
    .D(\u_dll/u_control/_0066_ ),
    .Q(\u_dll/trim[1] ),
    .CLK(\clknet_5_17__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2248_  (.RESET_B(\u_dll/u_control/_0303_ ),
    .D(\u_dll/u_control/_0067_ ),
    .Q(\u_dll/trim[2] ),
    .CLK(\clknet_5_16__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2249_  (.RESET_B(\u_dll/u_control/_0304_ ),
    .D(\u_dll/u_control/_0068_ ),
    .Q(\u_dll/trim[3] ),
    .CLK(\clknet_5_20__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2250_  (.RESET_B(\u_dll/u_control/_0305_ ),
    .D(\u_dll/u_control/_0069_ ),
    .Q(\u_dll/trim[4] ),
    .CLK(\clknet_5_23__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2251_  (.RESET_B(\u_dll/u_control/_0306_ ),
    .D(\u_dll/u_control/_0070_ ),
    .Q(\u_dll/trim[5] ),
    .CLK(\clknet_5_17__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2252_  (.RESET_B(\u_dll/u_control/_0307_ ),
    .D(\u_dll/u_control/_0071_ ),
    .Q(\u_dll/trim[6] ),
    .CLK(\clknet_5_21__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2253_  (.RESET_B(\u_dll/u_control/_0308_ ),
    .D(\u_dll/u_control/_0072_ ),
    .Q(\u_dll/trim[7] ),
    .CLK(\clknet_5_20__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2254_  (.RESET_B(\u_dll/u_control/_0309_ ),
    .D(\u_dll/u_control/_0073_ ),
    .Q(\u_dll/trim[8] ),
    .CLK(\clknet_5_21__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2255_  (.RESET_B(\u_dll/u_control/_0310_ ),
    .D(\u_dll/u_control/_0074_ ),
    .Q(\u_dll/trim[9] ),
    .CLK(\clknet_5_16__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2256_  (.RESET_B(\u_dll/u_control/_0311_ ),
    .D(\u_dll/u_control/_0063_ ),
    .Q(\u_dll/trim[10] ),
    .CLK(\clknet_5_21__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2257_  (.RESET_B(\u_dll/u_control/_0312_ ),
    .D(\u_dll/u_control/_0064_ ),
    .Q(\u_dll/trim[11] ),
    .CLK(\clknet_5_5__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2258_  (.RESET_B(\u_dll/u_control/_0313_ ),
    .D(\u_dll/u_control/_0065_ ),
    .Q(\u_dll/trim[12] ),
    .CLK(\clknet_5_7__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2259_  (.RESET_B(\u_dll/u_control/_0315_ ),
    .D(\u_dll/u_control/_0314_ ),
    .Q(\u_dll/u_control/_0105_ ),
    .CLK(\clknet_5_7__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2260_  (.RESET_B(\u_dll/u_control/_0317_ ),
    .D(\u_dll/u_control/_0316_ ),
    .Q(\u_dll/u_control/_0106_ ),
    .CLK(\clknet_5_19__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2261_  (.RESET_B(\u_dll/u_control/_0319_ ),
    .D(\u_dll/u_control/_0318_ ),
    .Q(\u_dll/u_control/_0107_ ),
    .CLK(\clknet_5_17__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2262_  (.RESET_B(\u_dll/u_control/_0321_ ),
    .D(\u_dll/u_control/_0320_ ),
    .Q(\u_dll/u_control/_0108_ ),
    .CLK(\clknet_5_23__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2263_  (.RESET_B(\u_dll/u_control/_0323_ ),
    .D(\u_dll/u_control/_0322_ ),
    .Q(\u_dll/u_control/_0109_ ),
    .CLK(\clknet_5_20__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2264_  (.RESET_B(\u_dll/u_control/_0325_ ),
    .D(\u_dll/u_control/_0324_ ),
    .Q(\u_dll/u_control/_0110_ ),
    .CLK(\clknet_5_17__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2265_  (.RESET_B(\u_dll/u_control/_0327_ ),
    .D(\u_dll/u_control/_0326_ ),
    .Q(\u_dll/u_control/_0111_ ),
    .CLK(\clknet_5_20__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2266_  (.RESET_B(\u_dll/u_control/_0329_ ),
    .D(\u_dll/u_control/_0328_ ),
    .Q(\u_dll/u_control/_0112_ ),
    .CLK(\clknet_5_20__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2267_  (.RESET_B(\u_dll/u_control/_0331_ ),
    .D(\u_dll/u_control/_0330_ ),
    .Q(\u_dll/u_control/_0113_ ),
    .CLK(\clknet_5_21__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2268_  (.RESET_B(\u_dll/u_control/_0333_ ),
    .D(\u_dll/u_control/_0332_ ),
    .Q(\u_dll/u_control/_0114_ ),
    .CLK(\clknet_5_16__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2269_  (.RESET_B(\u_dll/u_control/_0335_ ),
    .D(\u_dll/u_control/_0334_ ),
    .Q(\u_dll/u_control/_0115_ ),
    .CLK(\clknet_5_5__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2270_  (.RESET_B(\u_dll/u_control/_0337_ ),
    .D(\u_dll/u_control/_0336_ ),
    .Q(\u_dll/u_control/_0116_ ),
    .CLK(\clknet_5_5__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2271_  (.RESET_B(\u_dll/u_control/_0118_ ),
    .D(\u_dll/u_control/_0117_ ),
    .Q(\u_dll/u_control/_0088_ ),
    .CLK(\clknet_5_7__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2272_  (.RESET_B(\u_dll/u_control/_0119_ ),
    .D(\u_dll/u_control/_0001_ ),
    .Q(\u_dll/u_control/density[0] ),
    .CLK(\clknet_5_14__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2273_  (.RESET_B(\u_dll/u_control/_0120_ ),
    .D(\u_dll/u_control/_0002_ ),
    .Q(\u_dll/u_control/density[1] ),
    .CLK(\clknet_5_14__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2274_  (.RESET_B(\u_dll/u_control/_0121_ ),
    .D(\u_dll/u_control/_0003_ ),
    .Q(\u_dll/u_control/density[2] ),
    .CLK(\clknet_5_26__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2275_  (.RESET_B(\u_dll/u_control/_0122_ ),
    .D(\u_dll/u_control/_0004_ ),
    .Q(\u_dll/u_control/density[3] ),
    .CLK(\clknet_5_27__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2276_  (.RESET_B(\u_dll/u_control/_0123_ ),
    .D(\u_dll/u_control/_0005_ ),
    .Q(\u_dll/u_control/density[4] ),
    .CLK(\clknet_5_30__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2277_  (.RESET_B(\u_dll/u_control/_0124_ ),
    .D(\u_dll/u_control/_0006_ ),
    .Q(\u_dll/u_control/density[5] ),
    .CLK(\clknet_5_30__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2278_  (.RESET_B(\u_dll/u_control/_0125_ ),
    .D(\u_dll/u_control/_0007_ ),
    .Q(\u_dll/u_control/density[6] ),
    .CLK(\clknet_5_31__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2279_  (.RESET_B(\u_dll/u_control/_0126_ ),
    .D(\u_dll/u_control/_0008_ ),
    .Q(\u_dll/u_control/density[7] ),
    .CLK(\clknet_5_31__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2280_  (.RESET_B(\u_dll/u_control/_0128_ ),
    .D(\u_dll/u_control/_0127_ ),
    .Q(\u_dll/u_control/_0089_ ),
    .CLK(\clknet_5_19__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2281_  (.RESET_B(\u_dll/u_control/_0130_ ),
    .D(\u_dll/u_control/_0129_ ),
    .Q(\u_dll/u_control/_0090_ ),
    .CLK(\clknet_5_22__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2282_  (.RESET_B(\u_dll/u_control/_0132_ ),
    .D(\u_dll/u_control/_0131_ ),
    .Q(\u_dll/u_control/_0091_ ),
    .CLK(\clknet_5_22__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2283_  (.RESET_B(\u_dll/u_control/_0133_ ),
    .D(\u_dll/u_control/_0042_ ),
    .Q(\u_dll/u_control/last_code[3] ),
    .CLK(\clknet_5_23__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2284_  (.RESET_B(\u_dll/u_control/_0134_ ),
    .D(\u_dll/u_control/_0043_ ),
    .Q(\u_dll/u_control/last_code[4] ),
    .CLK(\clknet_5_22__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2285_  (.RESET_B(\u_dll/u_control/_0136_ ),
    .D(\u_dll/u_control/_0135_ ),
    .Q(\u_dll/u_control/_0092_ ),
    .CLK(\clknet_5_23__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2286_  (.RESET_B(\u_dll/u_control/_0137_ ),
    .D(\u_dll/u_control/_0044_ ),
    .Q(\u_dll/u_control/last_code[6] ),
    .CLK(\clknet_5_22__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2287_  (.RESET_B(\u_dll/u_control/_0138_ ),
    .D(\u_dll/u_control/_0030_ ),
    .Q(\u_dll/u_control/heartbeat_meta[0] ),
    .CLK(\clknet_4_13__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2288_  (.RESET_B(\u_dll/u_control/_0139_ ),
    .D(\u_dll/u_control/_0031_ ),
    .Q(\u_dll/u_control/heartbeat_meta[1] ),
    .CLK(\clknet_4_13__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2289_  (.RESET_B(\u_dll/u_control/_0140_ ),
    .D(\u_dll/u_control/_0032_ ),
    .Q(\u_dll/u_control/heartbeat_meta[2] ),
    .CLK(\clknet_4_8__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2290_  (.RESET_B(\u_dll/u_control/_0141_ ),
    .D(\u_dll/u_control/_0033_ ),
    .Q(\u_dll/u_control/heartbeat_meta[3] ),
    .CLK(\clknet_4_12__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2291_  (.RESET_B(\u_dll/u_control/_0142_ ),
    .D(\u_dll/u_control/_0038_ ),
    .Q(\u_dll/u_control/heartbeat_sync[0] ),
    .CLK(\clknet_4_14__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2292_  (.RESET_B(\u_dll/u_control/_0143_ ),
    .D(\u_dll/u_control/_0039_ ),
    .Q(\u_dll/u_control/heartbeat_sync[1] ),
    .CLK(\clknet_4_12__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2293_  (.RESET_B(\u_dll/u_control/_0144_ ),
    .D(\u_dll/u_control/_0040_ ),
    .Q(\u_dll/u_control/heartbeat_sync[2] ),
    .CLK(\clknet_4_8__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2294_  (.RESET_B(\u_dll/u_control/_0145_ ),
    .D(\u_dll/u_control/_0041_ ),
    .Q(\u_dll/u_control/heartbeat_sync[3] ),
    .CLK(\clknet_4_12__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2295_  (.RESET_B(\u_dll/u_control/_0146_ ),
    .D(\u_dll/u_control/_0046_ ),
    .Q(\u_dll/u_control/qualified_meta ),
    .CLK(\clknet_4_15__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2296_  (.RESET_B(\u_dll/u_control/_0147_ ),
    .D(\u_dll/u_control/_0047_ ),
    .Q(\u_dll/u_control/qualified_sync ),
    .CLK(\clknet_4_14__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2297_  (.RESET_B(\u_dll/u_control/_0148_ ),
    .D(\u_dll/u_control/_0034_ ),
    .Q(\u_dll/u_control/heartbeat_previous[0] ),
    .CLK(\clknet_4_15__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2298_  (.RESET_B(\u_dll/u_control/_0149_ ),
    .D(\u_dll/u_control/_0035_ ),
    .Q(\u_dll/u_control/heartbeat_previous[1] ),
    .CLK(\clknet_4_13__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2299_  (.RESET_B(\u_dll/u_control/_0150_ ),
    .D(\u_dll/u_control/_0036_ ),
    .Q(\u_dll/u_control/heartbeat_previous[2] ),
    .CLK(\clknet_4_8__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2300_  (.RESET_B(\u_dll/u_control/_0151_ ),
    .D(\u_dll/u_control/_0037_ ),
    .Q(\u_dll/u_control/heartbeat_previous[3] ),
    .CLK(\clknet_4_12__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2301_  (.RESET_B(\u_dll/u_control/_0152_ ),
    .D(\u_dll/u_control/_0078_ ),
    .Q(\u_dll/u_control/watchdog_full ),
    .CLK(\clknet_4_9__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2302_  (.RESET_B(\u_dll/u_control/_0153_ ),
    .D(\u_dll/u_control/_0026_ ),
    .Q(\u_dll/u_control/heartbeat[0] ),
    .CLK(\clknet_5_1__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2303_  (.RESET_B(\u_dll/u_control/_0154_ ),
    .D(\u_dll/u_control/_0027_ ),
    .Q(\u_dll/u_control/heartbeat[1] ),
    .CLK(\clknet_5_0__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2304_  (.RESET_B(\u_dll/u_control/_0155_ ),
    .D(\u_dll/u_control/_0028_ ),
    .Q(\u_dll/u_control/heartbeat[2] ),
    .CLK(\clknet_5_0__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2305_  (.RESET_B(\u_dll/u_control/_0156_ ),
    .D(\u_dll/u_control/_0029_ ),
    .Q(\u_dll/u_control/heartbeat[3] ),
    .CLK(\clknet_5_0__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2306_  (.RESET_B(\u_dll/u_control/_0157_ ),
    .D(\u_dll/u_control/_0048_ ),
    .Q(\u_dll/u_control/ref_count[0] ),
    .CLK(\clknet_5_1__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2307_  (.RESET_B(\u_dll/u_control/_0158_ ),
    .D(\u_dll/u_control/_0049_ ),
    .Q(\u_dll/u_control/ref_count[1] ),
    .CLK(\clknet_5_0__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2308_  (.RESET_B(\u_dll/u_control/_0159_ ),
    .D(\u_dll/u_control/_0050_ ),
    .Q(\u_dll/u_control/ref_count[2] ),
    .CLK(\clknet_5_0__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2309_  (.RESET_B(\u_dll/u_control/_0160_ ),
    .D(\u_dll/u_control/_0052_ ),
    .Q(\u_dll/u_control/sample_meta ),
    .CLK(\clknet_5_3__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2310_  (.RESET_B(\u_dll/u_control/_0161_ ),
    .D(\u_dll/u_control/_0053_ ),
    .Q(\u_dll/u_control/sample_sync ),
    .CLK(\clknet_5_4__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2311_  (.RESET_B(\u_dll/u_control/_0163_ ),
    .D(\u_dll/u_control/_0162_ ),
    .Q(\u_dll/u_control/_0093_ ),
    .CLK(\clknet_5_1__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2312_  (.RESET_B(\u_dll/u_control/_0165_ ),
    .D(\u_dll/u_control/_0164_ ),
    .Q(\u_dll/u_control/_0094_ ),
    .CLK(\clknet_5_4__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2313_  (.RESET_B(\u_dll/u_control/_0166_ ),
    .D(\u_dll/u_control/_0086_ ),
    .Q(\u_dll/u_control/window_meta ),
    .CLK(\clknet_4_15__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2314_  (.RESET_B(\u_dll/u_control/_0167_ ),
    .D(\u_dll/u_control/_0087_ ),
    .Q(\u_dll/u_control/window_sync ),
    .CLK(\clknet_4_6__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2315_  (.RESET_B(\u_dll/u_control/_0168_ ),
    .D(\u_dll/u_control/_0000_ ),
    .Q(\u_dll/u_control/count_full ),
    .CLK(\clknet_4_2__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2316_  (.RESET_B(\u_dll/u_control/_0170_ ),
    .D(net127),
    .Q(\u_dll/u_control/_0095_ ),
    .CLK(\clknet_5_14__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_tiehi \u_dll/u_control/_2316__127  (.L_HI(net127));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2317_  (.RESET_B(\u_dll/u_control/_0172_ ),
    .D(\u_dll/u_control/_0171_ ),
    .Q(\u_dll/u_control/_0096_ ),
    .CLK(\clknet_5_15__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2318_  (.RESET_B(\u_dll/u_control/_0174_ ),
    .D(net128),
    .Q(\u_dll/u_control/_0097_ ),
    .CLK(\clknet_4_0__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_tiehi \u_dll/u_control/_2318__128  (.L_HI(net128));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2319_  (.RESET_B(\u_dll/u_control/_0176_ ),
    .D(\u_dll/u_control/_0175_ ),
    .Q(\u_dll/u_control/_0098_ ),
    .CLK(\clknet_4_0__leaf_u_dll/controller_ring_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2320_  (.RESET_B(\u_dll/u_control/_0177_ ),
    .D(ui_in[0]),
    .Q(\u_dll/u_control/multiply_cfg[0] ),
    .CLK(\clknet_5_10__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2321_  (.RESET_B(\u_dll/u_control/_0178_ ),
    .D(ui_in[1]),
    .Q(\u_dll/u_control/multiply_cfg[1] ),
    .CLK(\clknet_5_10__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2322_  (.RESET_B(\u_dll/u_control/_0179_ ),
    .D(ui_in[2]),
    .Q(\u_dll/u_control/multiply_cfg[2] ),
    .CLK(\clknet_5_11__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2323_  (.RESET_B(\u_dll/u_control/_0180_ ),
    .D(ui_in[3]),
    .Q(\u_dll/u_control/multiply_cfg[3] ),
    .CLK(\clknet_5_10__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_control/_2324_  (.RESET_B(\u_dll/u_control/_0181_ ),
    .D(ui_in[4]),
    .Q(\u_dll/u_control/multiply_cfg[4] ),
    .CLK(\clknet_5_10__leaf_u_dll/controller_ref_clk ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout1  (.A(\u_dll/u_control/_0583_ ),
    .X(\u_dll/u_control/net1 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout10  (.A(\u_dll/u_control/_0553_ ),
    .X(\u_dll/u_control/net10 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout11  (.A(\u_dll/u_control/_0864_ ),
    .X(\u_dll/u_control/net11 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout12  (.A(\u_dll/u_control/_0423_ ),
    .X(\u_dll/u_control/net12 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout13  (.A(\u_dll/u_control/_0423_ ),
    .X(\u_dll/u_control/net13 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout14  (.A(\u_dll/u_control/net15 ),
    .X(\u_dll/u_control/net14 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout15  (.A(\u_dll/u_control/_0958_ ),
    .X(\u_dll/u_control/net15 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout16  (.A(\u_dll/u_control/_0420_ ),
    .X(\u_dll/u_control/net16 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout17  (.A(\u_dll/u_control/_0420_ ),
    .X(\u_dll/u_control/net17 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout18  (.A(\u_dll/u_control/_0419_ ),
    .X(\u_dll/u_control/net18 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout19  (.A(\u_dll/u_control/_0419_ ),
    .X(\u_dll/u_control/net19 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout2  (.A(\u_dll/u_control/_0903_ ),
    .X(\u_dll/u_control/net2 ));
 sg13cmos5l_buf_4 \u_dll/u_control/fanout20  (.X(\u_dll/u_control/net20 ),
    .A(\u_dll/u_control/_1034_ ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout21  (.A(\u_dll/u_control/_1015_ ),
    .X(\u_dll/u_control/net21 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout22  (.A(\u_dll/u_control/_1015_ ),
    .X(\u_dll/u_control/net22 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout23  (.A(\u_dll/u_control/_0963_ ),
    .X(\u_dll/u_control/net23 ));
 sg13cmos5l_buf_4 \u_dll/u_control/fanout24  (.X(\u_dll/u_control/net24 ),
    .A(\u_dll/u_control/net26 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout25  (.A(\u_dll/u_control/net26 ),
    .X(\u_dll/u_control/net25 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout26  (.A(\u_dll/u_control/_0962_ ),
    .X(\u_dll/u_control/net26 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout27  (.A(\u_dll/u_control/net28 ),
    .X(\u_dll/u_control/net27 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout28  (.A(\u_dll/u_control/_0098_ ),
    .X(\u_dll/u_control/net28 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout29  (.A(\u_dll/u_control/_0098_ ),
    .X(\u_dll/u_control/net29 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout3  (.A(\u_dll/u_control/_0902_ ),
    .X(\u_dll/u_control/net3 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout30  (.A(\u_dll/u_control/net32 ),
    .X(\u_dll/u_control/net30 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout31  (.A(\u_dll/u_control/net32 ),
    .X(\u_dll/u_control/net31 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout32  (.A(\u_dll/u_control/net34 ),
    .X(\u_dll/u_control/net32 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout33  (.A(\u_dll/u_control/net34 ),
    .X(\u_dll/u_control/net33 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout34  (.A(\u_dll/u_control/count_full ),
    .X(\u_dll/u_control/net34 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout35  (.A(\u_dll/u_control/_0944_ ),
    .X(\u_dll/u_control/net35 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout36  (.A(\u_dll/u_control/_0886_ ),
    .X(\u_dll/u_control/net36 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout37  (.A(\u_dll/u_control/net38 ),
    .X(\u_dll/u_control/net37 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout38  (.A(\u_dll/u_control/net39 ),
    .X(\u_dll/u_control/net38 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout39  (.A(\u_dll/u_control/_0885_ ),
    .X(\u_dll/u_control/net39 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout4  (.A(\u_dll/u_control/_0891_ ),
    .X(\u_dll/u_control/net4 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout40  (.A(\u_dll/u_control/ref_reset_pipe[1] ),
    .X(\u_dll/u_control/net40 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout41  (.A(\u_dll/u_control/ref_reset_pipe[1] ),
    .X(\u_dll/u_control/net41 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout42  (.A(\u_dll/u_control/net43 ),
    .X(\u_dll/u_control/net42 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout43  (.A(\u_dll/u_control/net44 ),
    .X(\u_dll/u_control/net43 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout44  (.A(\u_dll/u_control/multiply_cfg[4] ),
    .X(\u_dll/u_control/net44 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout45  (.A(\u_dll/u_control/net46 ),
    .X(\u_dll/u_control/net45 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout46  (.A(\u_dll/u_control/multiply_cfg[3] ),
    .X(\u_dll/u_control/net46 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout47  (.A(\u_dll/u_control/_0096_ ),
    .X(\u_dll/u_control/net47 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout48  (.A(\u_dll/u_control/_0096_ ),
    .X(\u_dll/u_control/net48 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout49  (.A(\u_dll/u_control/net50 ),
    .X(\u_dll/u_control/net49 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout5  (.A(\u_dll/u_control/_0876_ ),
    .X(\u_dll/u_control/net5 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout50  (.A(\u_dll/u_control/net51 ),
    .X(\u_dll/u_control/net50 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout51  (.A(\u_dll/u_control/_0096_ ),
    .X(\u_dll/u_control/net51 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout52  (.A(\u_dll/u_control/_0089_ ),
    .X(\u_dll/u_control/net52 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout53  (.A(\u_dll/u_control/step_value[7] ),
    .X(\u_dll/u_control/net53 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout54  (.A(\u_dll/u_control/step_value[7] ),
    .X(\u_dll/u_control/net54 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout55  (.A(\u_dll/u_control/net57 ),
    .X(\u_dll/u_control/net55 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout56  (.A(\u_dll/u_control/net57 ),
    .X(\u_dll/u_control/net56 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout57  (.A(\u_dll/u_control/error_negative ),
    .X(\u_dll/u_control/net57 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout58  (.A(\u_dll/u_control/_0102_ ),
    .X(\u_dll/u_control/net58 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout6  (.A(\u_dll/u_control/_0869_ ),
    .X(\u_dll/u_control/net6 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout62  (.A(\u_dll/u_control/net64 ),
    .X(\u_dll/u_control/net62 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout63  (.A(\u_dll/u_control/net64 ),
    .X(\u_dll/u_control/net63 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout64  (.A(\u_dll/u_control/net78 ),
    .X(\u_dll/u_control/net64 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout65  (.A(\u_dll/u_control/net69 ),
    .X(\u_dll/u_control/net65 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout66  (.A(\u_dll/u_control/net69 ),
    .X(\u_dll/u_control/net66 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout67  (.A(\u_dll/u_control/net69 ),
    .X(\u_dll/u_control/net67 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout68  (.A(\u_dll/u_control/net69 ),
    .X(\u_dll/u_control/net68 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout69  (.A(\u_dll/u_control/net78 ),
    .X(\u_dll/u_control/net69 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout7  (.A(\u_dll/u_control/net10 ),
    .X(\u_dll/u_control/net7 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout70  (.A(\u_dll/u_control/net73 ),
    .X(\u_dll/u_control/net70 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout71  (.A(\u_dll/u_control/net73 ),
    .X(\u_dll/u_control/net71 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout72  (.A(\u_dll/u_control/net73 ),
    .X(\u_dll/u_control/net72 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout73  (.A(\u_dll/u_control/net78 ),
    .X(\u_dll/u_control/net73 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout74  (.A(\u_dll/u_control/net77 ),
    .X(\u_dll/u_control/net74 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout75  (.A(\u_dll/u_control/net77 ),
    .X(\u_dll/u_control/net75 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout76  (.A(\u_dll/u_control/net77 ),
    .X(\u_dll/u_control/net76 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout77  (.A(\u_dll/u_control/net78 ),
    .X(\u_dll/u_control/net77 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout78  (.A(\u_dll/reset ),
    .X(\u_dll/u_control/net78 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout79  (.A(\u_dll/net80 ),
    .X(\u_dll/u_control/net79 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout8  (.A(\u_dll/u_control/net10 ),
    .X(\u_dll/u_control/net8 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout81  (.A(\u_dll/net82 ),
    .X(\u_dll/u_control/net81 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout83  (.A(\u_dll/u_control/net85 ),
    .X(\u_dll/u_control/net83 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout84  (.A(\u_dll/u_control/net85 ),
    .X(\u_dll/u_control/net84 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout85  (.A(\u_dll/u_control/net96 ),
    .X(\u_dll/u_control/net85 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout86  (.A(\u_dll/u_control/net96 ),
    .X(\u_dll/u_control/net86 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout87  (.A(\u_dll/u_control/net96 ),
    .X(\u_dll/u_control/net87 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout88  (.A(\u_dll/u_control/net89 ),
    .X(\u_dll/u_control/net88 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout89  (.A(\u_dll/u_control/net91 ),
    .X(\u_dll/u_control/net89 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout9  (.A(\u_dll/u_control/net10 ),
    .X(\u_dll/u_control/net9 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout90  (.A(\u_dll/u_control/net91 ),
    .X(\u_dll/u_control/net90 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout91  (.A(\u_dll/u_control/net95 ),
    .X(\u_dll/u_control/net91 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout92  (.A(\u_dll/u_control/net94 ),
    .X(\u_dll/u_control/net92 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout93  (.A(\u_dll/u_control/net94 ),
    .X(\u_dll/u_control/net93 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout94  (.A(\u_dll/u_control/net95 ),
    .X(\u_dll/u_control/net94 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout95  (.A(\u_dll/u_control/net96 ),
    .X(\u_dll/u_control/net95 ));
 sg13cmos5l_buf_1 \u_dll/u_control/fanout96  (.A(\u_dll/reset ),
    .X(\u_dll/u_control/net96 ));
 sg13cmos5l_buf_1 \u_dll/u_control/rebuffer129  (.A(\u_dll/u_control/_1033_ ),
    .X(\u_dll/u_control/net129 ));
 sg13cmos5l_buf_1 \u_dll/u_control/rebuffer130  (.A(\u_dll/u_control/_0967_ ),
    .X(\u_dll/u_control/net130 ));
 sg13cmos5l_buf_1 \u_dll/u_control/rebuffer131  (.A(\u_dll/u_control/_1034_ ),
    .X(\u_dll/u_control/net131 ));
 sg13cmos5l_buf_1 \u_dll/u_control/rebuffer132  (.A(\u_dll/u_control/_0961_ ),
    .X(\u_dll/u_control/net132 ));
 sg13cmos5l_buf_2 \u_dll/u_controller_buffer/u_buf  (.A(\u_dll/ring_clk ),
    .X(\u_dll/controller_ring_clk ));
 sg13cmos5l_inv_1 \u_dll/u_div0/_049_  (.Y(\u_dll/u_div0/_008_ ),
    .A(ui_in[6]));
 sg13cmos5l_inv_1 \u_dll/u_div0/_050_  (.Y(\u_dll/u_div0/_011_ ),
    .A(\u_dll/u_div0/syncN[3] ));
 sg13cmos5l_inv_1 \u_dll/u_div0/_051_  (.Y(\u_dll/u_div0/_012_ ),
    .A(\u_dll/u_div0/syncN[2] ));
 sg13cmos5l_inv_1 \u_dll/u_div0/_052_  (.Y(\u_dll/u_div0/_013_ ),
    .A(\u_dll/u_div0/count[2] ));
 sg13cmos5l_inv_1 \u_dll/u_div0/_053_  (.Y(\u_dll/u_div0/_014_ ),
    .A(\u_dll/u_div0/count[3] ));
 sg13cmos5l_inv_1 \u_dll/u_div0/_054_  (.Y(\u_dll/u_div0/_015_ ),
    .A(\u_dll/u_div0/syncN[0] ));
 sg13cmos5l_inv_1 \u_dll/u_div0/_055_  (.Y(\u_dll/u_div0/syncN[1] ),
    .A(\u_dll/u_div0/_005_ ));
 sg13cmos5l_inv_1 \u_dll/u_div0/_056_  (.Y(\u_dll/u_div0/_009_ ),
    .A(\u_dll/u_div0/clk_count ));
 sg13cmos5l_nor4_1 \u_dll/u_div0/_057_  (.A(\u_dll/u_div0/syncN[3] ),
    .B(\u_dll/u_div0/syncN[2] ),
    .C(\u_dll/u_div0/syncN[4] ),
    .D(\u_dll/u_div0/syncN[1] ),
    .Y(\u_dll/u_div0/_016_ ));
 sg13cmos5l_inv_1 \u_dll/u_div0/_058_  (.Y(\u_dll/u_div0/valid ),
    .A(\u_dll/u_div0/_016_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_div0/_059_  (.A(\u_dll/u_div0/syncN[0] ),
    .B_N(\u_dll/u_div0/_005_ ),
    .Y(\u_dll/u_div0/_017_ ));
 sg13cmos5l_nor4_1 \u_dll/u_div0/_060_  (.A(\u_dll/u_div0/syncN[3] ),
    .B(\u_dll/u_div0/syncN[2] ),
    .C(\u_dll/u_div0/syncN[0] ),
    .D(\u_dll/u_div0/syncN[1] ),
    .Y(\u_dll/u_div0/_018_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_div0/_061_  (.A(\u_dll/u_div0/syncN[4] ),
    .B_N(\u_dll/u_div0/_018_ ),
    .Y(\u_dll/u_div0/bypass ));
 sg13cmos5l_xnor2_1 \u_dll/u_div0/_062_  (.Y(\u_dll/u_div0/_019_ ),
    .A(\u_dll/u_div0/_012_ ),
    .B(\u_dll/u_div0/_017_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_div0/_063_  (.Y(\u_dll/u_div0/_020_ ),
    .B(\u_dll/u_div0/_005_ ),
    .A_N(\u_dll/u_div0/count[0] ));
 sg13cmos5l_nand2_1 \u_dll/u_div0/_064_  (.Y(\u_dll/u_div0/_021_ ),
    .A(\u_dll/u_div0/syncN[0] ),
    .B(\u_dll/u_div0/_005_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_div0/_065_  (.A(\u_dll/u_div0/_005_ ),
    .B_N(\u_dll/u_div0/count[0] ),
    .Y(\u_dll/u_div0/_022_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_div0/_066_  (.Y(\u_dll/u_div0/_023_ ),
    .B1(\u_dll/u_div0/_022_ ),
    .B2(\u_dll/u_div0/_015_ ),
    .A2(\u_dll/u_div0/_020_ ),
    .A1(\u_dll/u_div0/count[1] ));
 sg13cmos5l_a22oi_1 \u_dll/u_div0/_067_  (.Y(\u_dll/u_div0/_024_ ),
    .B1(\u_dll/u_div0/_021_ ),
    .B2(\u_dll/u_div0/_023_ ),
    .A2(\u_dll/u_div0/_019_ ),
    .A1(\u_dll/u_div0/_013_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_div0/_068_  (.A1(\u_dll/u_div0/_012_ ),
    .A2(\u_dll/u_div0/_017_ ),
    .Y(\u_dll/u_div0/_025_ ),
    .B1(\u_dll/u_div0/_011_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div0/_069_  (.A(\u_dll/u_div0/_014_ ),
    .B(\u_dll/u_div0/_018_ ),
    .C(\u_dll/u_div0/_025_ ),
    .Y(\u_dll/u_div0/_026_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div0/_070_  (.A(\u_dll/u_div0/_013_ ),
    .B(\u_dll/u_div0/_019_ ),
    .Y(\u_dll/u_div0/_027_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div0/_071_  (.A(\u_dll/u_div0/_024_ ),
    .B(\u_dll/u_div0/_026_ ),
    .C(\u_dll/u_div0/_027_ ),
    .Y(\u_dll/u_div0/_028_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_div0/_072_  (.Y(\u_dll/u_div0/_029_ ),
    .A(\u_dll/u_div0/syncN[4] ),
    .B(\u_dll/u_div0/_018_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_div0/_073_  (.B1(\u_dll/u_div0/_014_ ),
    .Y(\u_dll/u_div0/_030_ ),
    .A1(\u_dll/u_div0/_018_ ),
    .A2(\u_dll/u_div0/_025_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_div0/_074_  (.B1(\u_dll/u_div0/_030_ ),
    .Y(\u_dll/u_div0/_031_ ),
    .A1(\u_dll/u_div0/count[4] ),
    .A2(\u_dll/u_div0/_029_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_div0/_075_  (.A1(\u_dll/u_div0/count[4] ),
    .A2(\u_dll/u_div0/_029_ ),
    .Y(\u_dll/u_div0/_032_ ),
    .B1(\u_dll/u_div0/_016_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_div0/_076_  (.B1(\u_dll/u_div0/_032_ ),
    .Y(\u_dll/u_div0/_033_ ),
    .A1(\u_dll/u_div0/_028_ ),
    .A2(\u_dll/u_div0/_031_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div0/_077_  (.A(\u_dll/u_div0/count[0] ),
    .B(\u_dll/u_div0/_033_ ),
    .Y(\u_dll/u_div0/_000_ ));
 sg13cmos5l_and2_1 \u_dll/u_div0/_078_  (.A(\u_dll/u_div0/count[0] ),
    .B(\u_dll/u_div0/count[1] ),
    .X(\u_dll/u_div0/_034_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div0/_079_  (.A(\u_dll/u_div0/count[0] ),
    .B(\u_dll/u_div0/count[1] ),
    .Y(\u_dll/u_div0/_035_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div0/_080_  (.A(\u_dll/u_div0/_033_ ),
    .B(\u_dll/u_div0/_034_ ),
    .C(\u_dll/u_div0/_035_ ),
    .Y(\u_dll/u_div0/_001_ ));
 sg13cmos5l_nand2_1 \u_dll/u_div0/_081_  (.Y(\u_dll/u_div0/_036_ ),
    .A(\u_dll/u_div0/count[2] ),
    .B(\u_dll/u_div0/_034_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_div0/_082_  (.Y(\u_dll/u_div0/_037_ ),
    .A(\u_dll/u_div0/count[2] ),
    .B(\u_dll/u_div0/_034_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div0/_083_  (.A(\u_dll/u_div0/_033_ ),
    .B(\u_dll/u_div0/_037_ ),
    .Y(\u_dll/u_div0/_002_ ));
 sg13cmos5l_nand3_1 \u_dll/u_div0/_084_  (.B(\u_dll/u_div0/count[3] ),
    .C(\u_dll/u_div0/_034_ ),
    .A(\u_dll/u_div0/count[2] ),
    .Y(\u_dll/u_div0/_038_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_div0/_085_  (.Y(\u_dll/u_div0/_039_ ),
    .A(\u_dll/u_div0/_014_ ),
    .B(\u_dll/u_div0/_036_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div0/_086_  (.A(\u_dll/u_div0/_033_ ),
    .B(\u_dll/u_div0/_039_ ),
    .Y(\u_dll/u_div0/_003_ ));
 sg13cmos5l_xor2_1 \u_dll/u_div0/_087_  (.B(\u_dll/u_div0/_038_ ),
    .A(\u_dll/u_div0/count[4] ),
    .X(\u_dll/u_div0/_040_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div0/_088_  (.A(\u_dll/u_div0/_033_ ),
    .B(\u_dll/u_div0/_040_ ),
    .Y(\u_dll/u_div0/_004_ ));
 sg13cmos5l_xor2_1 \u_dll/u_div0/_089_  (.B(\u_dll/u_div0/count[1] ),
    .A(\u_dll/u_div0/syncN[2] ),
    .X(\u_dll/u_div0/_041_ ));
 sg13cmos5l_xor2_1 \u_dll/u_div0/_090_  (.B(\u_dll/u_div0/_005_ ),
    .A(\u_dll/u_div0/count[0] ),
    .X(\u_dll/u_div0/_042_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_div0/_091_  (.Y(\u_dll/u_div0/_043_ ),
    .A(\u_dll/u_div0/syncN[3] ),
    .B(\u_dll/u_div0/count[2] ));
 sg13cmos5l_xnor2_1 \u_dll/u_div0/_092_  (.Y(\u_dll/u_div0/_044_ ),
    .A(\u_dll/u_div0/syncN[4] ),
    .B(\u_dll/u_div0/count[3] ));
 sg13cmos5l_nand3_1 \u_dll/u_div0/_093_  (.B(\u_dll/u_div0/_043_ ),
    .C(\u_dll/u_div0/_044_ ),
    .A(\u_dll/u_div0/_042_ ),
    .Y(\u_dll/u_div0/_045_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div0/_094_  (.A(\u_dll/u_div0/count[4] ),
    .B(\u_dll/u_div0/_041_ ),
    .C(\u_dll/u_div0/_045_ ),
    .Y(\u_dll/u_div0/_046_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div0/_095_  (.A(\u_dll/u_div0/count[2] ),
    .B(\u_dll/u_div0/count[4] ),
    .C(\u_dll/u_div0/count[3] ),
    .Y(\u_dll/u_div0/_047_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_div0/_096_  (.A1(\u_dll/u_div0/_035_ ),
    .A2(\u_dll/u_div0/_047_ ),
    .Y(\u_dll/u_div0/_048_ ),
    .B1(\u_dll/u_div0/high_pos ));
 sg13cmos5l_nor3_1 \u_dll/u_div0/_097_  (.A(\u_dll/u_div0/_016_ ),
    .B(\u_dll/u_div0/_046_ ),
    .C(\u_dll/u_div0/_048_ ),
    .Y(\u_dll/u_div0/_010_ ));
 sg13cmos5l_buf_1 \u_dll/u_div0/_098_  (.A(\u_dll/u_div0/_006_ ),
    .X(\u_dll/u_div0/_007_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_099_  (.RESET_B(\u_dll/divider_resetb[0] ),
    .D(\u_dll/u_div0/_010_ ),
    .Q(\u_dll/u_div0/high_pos ),
    .CLK(\u_dll/u_div0/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_100_  (.RESET_B(\u_dll/divider_resetb[0] ),
    .D(\u_dll/u_div0/high_pos ),
    .Q(\u_dll/u_div0/high_neg ),
    .CLK(\u_dll/u_div0/_009_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_101_  (.RESET_B(\u_dll/divider_resetb[0] ),
    .D(\u_dll/u_div0/_000_ ),
    .Q(\u_dll/u_div0/count[0] ),
    .CLK(\u_dll/u_div0/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_102_  (.RESET_B(\u_dll/divider_resetb[0] ),
    .D(\u_dll/u_div0/_001_ ),
    .Q(\u_dll/u_div0/count[1] ),
    .CLK(\u_dll/u_div0/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_103_  (.RESET_B(\u_dll/divider_resetb[0] ),
    .D(\u_dll/u_div0/_002_ ),
    .Q(\u_dll/u_div0/count[2] ),
    .CLK(\u_dll/u_div0/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_104_  (.RESET_B(\u_dll/divider_resetb[0] ),
    .D(\u_dll/u_div0/_003_ ),
    .Q(\u_dll/u_div0/count[3] ),
    .CLK(\u_dll/u_div0/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_105_  (.RESET_B(\u_dll/divider_resetb[0] ),
    .D(\u_dll/u_div0/_004_ ),
    .Q(\u_dll/u_div0/count[4] ),
    .CLK(\u_dll/u_div0/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_106_  (.RESET_B(\u_dll/u_div0/net59 ),
    .D(\u_dll/u_div0/syncNp[0] ),
    .Q(\u_dll/u_div0/syncN[0] ),
    .CLK(\u_dll/u_div0/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_107_  (.RESET_B(\u_dll/u_div0/net59 ),
    .D(\u_dll/u_div0/_007_ ),
    .Q(\u_dll/u_div0/_005_ ),
    .CLK(\u_dll/u_div0/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_108_  (.RESET_B(\u_dll/u_div0/net59 ),
    .D(\u_dll/u_div0/syncNp[2] ),
    .Q(\u_dll/u_div0/syncN[2] ),
    .CLK(\u_dll/u_div0/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_109_  (.RESET_B(\u_dll/u_div0/net59 ),
    .D(\u_dll/u_div0/syncNp[3] ),
    .Q(\u_dll/u_div0/syncN[3] ),
    .CLK(\u_dll/u_div0/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_110_  (.RESET_B(\u_dll/u_div0/net59 ),
    .D(\u_dll/u_div0/syncNp[4] ),
    .Q(\u_dll/u_div0/syncN[4] ),
    .CLK(\u_dll/u_div0/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_111_  (.RESET_B(\u_dll/u_div0/net59 ),
    .D(ui_in[5]),
    .Q(\u_dll/u_div0/syncNp[0] ),
    .CLK(\u_dll/u_div0/clk_sample ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_112_  (.RESET_B(\u_dll/u_div0/net59 ),
    .D(\u_dll/u_div0/_008_ ),
    .Q(\u_dll/u_div0/_006_ ),
    .CLK(\u_dll/u_div0/clk_sample ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_113_  (.RESET_B(\u_dll/u_div0/net59 ),
    .D(ui_in[7]),
    .Q(\u_dll/u_div0/syncNp[2] ),
    .CLK(\u_dll/u_div0/clk_sample ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_114_  (.RESET_B(\u_dll/net61 ),
    .D(uio_in[0]),
    .Q(\u_dll/u_div0/syncNp[3] ),
    .CLK(\u_dll/u_div0/clk_sample ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div0/_115_  (.RESET_B(\u_dll/net61 ),
    .D(uio_in[1]),
    .Q(\u_dll/u_div0/syncNp[4] ),
    .CLK(\u_dll/u_div0/clk_sample ));
 sg13cmos5l_buf_1 \u_dll/u_div0/fanout59  (.A(\u_dll/net61 ),
    .X(\u_dll/u_div0/net59 ));
 sg13cmos5l_nand2_2 \u_dll/u_div0/u_bypass_mux/u_a0  (.Y(\u_dll/u_div0/u_bypass_mux/n0 ),
    .A(\u_dll/u_div0/enabled_high ),
    .B(\u_dll/u_div0/u_bypass_mux/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_div0/u_bypass_mux/u_a1  (.Y(\u_dll/u_div0/u_bypass_mux/n1 ),
    .A(\u_dll/divider_clk[0] ),
    .B(\u_dll/u_div0/bypass ));
 sg13cmos5l_nand2_2 \u_dll/u_div0/u_bypass_mux/u_merge  (.Y(\u_dll/u_div0/selected ),
    .A(\u_dll/u_div0/u_bypass_mux/n0 ),
    .B(\u_dll/u_div0/u_bypass_mux/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_div0/u_bypass_mux/u_sel  (.Y(\u_dll/u_div0/u_bypass_mux/sn ),
    .A(\u_dll/u_div0/bypass ));
 sg13cmos5l_buf_4 \u_dll/u_div0/u_clkbuf_config/u_buf  (.X(\u_dll/u_div0/clk_config ),
    .A(\u_dll/divider_clk[0] ));
 sg13cmos5l_buf_4 \u_dll/u_div0/u_clkbuf_count/u_buf  (.X(\u_dll/u_div0/clk_count ),
    .A(\u_dll/divider_clk[0] ));
 sg13cmos5l_buf_16 \u_dll/u_div0/u_clkbuf_out/u_buf  (.X(clk0),
    .A(\u_dll/u_div0/output_p ));
 sg13cmos5l_buf_4 \u_dll/u_div0/u_clkbuf_sample/u_buf  (.X(\u_dll/u_div0/clk_sample ),
    .A(\u_dll/divider_clk[0] ));
 sg13cmos5l_or2_1 \u_dll/u_div0/u_odd_extend/u_or  (.X(\u_dll/u_div0/odd_high ),
    .B(\u_dll/u_div0/high_neg ),
    .A(\u_dll/u_div0/high_pos ));
 sg13cmos5l_inv_2 \u_dll/u_div0/u_output_inv0/u_inv  (.Y(\u_dll/u_div0/output_n ),
    .A(\u_dll/u_div0/running ));
 sg13cmos5l_inv_2 \u_dll/u_div0/u_output_inv1/u_inv  (.Y(\u_dll/u_div0/output_p ),
    .A(\u_dll/u_div0/output_n ));
 sg13cmos5l_nand2_2 \u_dll/u_div0/u_parity_mux/u_a0  (.Y(\u_dll/u_div0/u_parity_mux/n0 ),
    .A(\u_dll/u_div0/high_pos ),
    .B(\u_dll/u_div0/u_parity_mux/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_div0/u_parity_mux/u_a1  (.Y(\u_dll/u_div0/u_parity_mux/n1 ),
    .A(\u_dll/u_div0/odd_high ),
    .B(\u_dll/u_div0/syncN[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_div0/u_parity_mux/u_merge  (.Y(\u_dll/u_div0/divided_high ),
    .A(\u_dll/u_div0/u_parity_mux/n0 ),
    .B(\u_dll/u_div0/u_parity_mux/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_div0/u_parity_mux/u_sel  (.Y(\u_dll/u_div0/u_parity_mux/sn ),
    .A(\u_dll/u_div0/syncN[0] ));
 sg13cmos5l_and2_2 \u_dll/u_div0/u_run_gate/u_and  (.A(\u_dll/u_div0/selected ),
    .B(\u_dll/divider_resetb[0] ),
    .X(\u_dll/u_div0/running ));
 sg13cmos5l_and2_2 \u_dll/u_div0/u_valid_gate/u_and  (.A(\u_dll/u_div0/divided_high ),
    .B(\u_dll/u_div0/valid ),
    .X(\u_dll/u_div0/enabled_high ));
 sg13cmos5l_buf_4 \u_dll/u_div0_buffer/u_buf  (.X(\u_dll/divider_clk[0] ),
    .A(\u_dll/ring_clk ));
 sg13cmos5l_buf_4 \u_dll/u_div0_reset_buffer/u_buf  (.X(\u_dll/divider_resetb[0] ),
    .A(\u_dll/run_resetb ));
 sg13cmos5l_inv_1 \u_dll/u_div1/_049_  (.Y(\u_dll/u_div1/_008_ ),
    .A(uio_in[3]));
 sg13cmos5l_inv_1 \u_dll/u_div1/_050_  (.Y(\u_dll/u_div1/_011_ ),
    .A(\u_dll/u_div1/syncN[3] ));
 sg13cmos5l_inv_1 \u_dll/u_div1/_051_  (.Y(\u_dll/u_div1/_012_ ),
    .A(\u_dll/u_div1/syncN[2] ));
 sg13cmos5l_inv_1 \u_dll/u_div1/_052_  (.Y(\u_dll/u_div1/_013_ ),
    .A(\u_dll/u_div1/count[2] ));
 sg13cmos5l_inv_1 \u_dll/u_div1/_053_  (.Y(\u_dll/u_div1/_014_ ),
    .A(\u_dll/u_div1/count[3] ));
 sg13cmos5l_inv_1 \u_dll/u_div1/_054_  (.Y(\u_dll/u_div1/_015_ ),
    .A(\u_dll/u_div1/syncN[0] ));
 sg13cmos5l_inv_1 \u_dll/u_div1/_055_  (.Y(\u_dll/u_div1/syncN[1] ),
    .A(\u_dll/u_div1/_005_ ));
 sg13cmos5l_inv_1 \u_dll/u_div1/_056_  (.Y(\u_dll/u_div1/_009_ ),
    .A(\u_dll/u_div1/clk_count ));
 sg13cmos5l_nor4_1 \u_dll/u_div1/_057_  (.A(\u_dll/u_div1/syncN[3] ),
    .B(\u_dll/u_div1/syncN[2] ),
    .C(\u_dll/u_div1/syncN[4] ),
    .D(\u_dll/u_div1/syncN[1] ),
    .Y(\u_dll/u_div1/_016_ ));
 sg13cmos5l_inv_1 \u_dll/u_div1/_058_  (.Y(\u_dll/u_div1/valid ),
    .A(\u_dll/u_div1/_016_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_div1/_059_  (.A(\u_dll/u_div1/syncN[0] ),
    .B_N(\u_dll/u_div1/_005_ ),
    .Y(\u_dll/u_div1/_017_ ));
 sg13cmos5l_nor4_1 \u_dll/u_div1/_060_  (.A(\u_dll/u_div1/syncN[3] ),
    .B(\u_dll/u_div1/syncN[2] ),
    .C(\u_dll/u_div1/syncN[0] ),
    .D(\u_dll/u_div1/syncN[1] ),
    .Y(\u_dll/u_div1/_018_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_div1/_061_  (.A(\u_dll/u_div1/syncN[4] ),
    .B_N(\u_dll/u_div1/_018_ ),
    .Y(\u_dll/u_div1/bypass ));
 sg13cmos5l_xnor2_1 \u_dll/u_div1/_062_  (.Y(\u_dll/u_div1/_019_ ),
    .A(\u_dll/u_div1/_012_ ),
    .B(\u_dll/u_div1/_017_ ));
 sg13cmos5l_nand2b_1 \u_dll/u_div1/_063_  (.Y(\u_dll/u_div1/_020_ ),
    .B(\u_dll/u_div1/_005_ ),
    .A_N(\u_dll/u_div1/count[0] ));
 sg13cmos5l_nand2_1 \u_dll/u_div1/_064_  (.Y(\u_dll/u_div1/_021_ ),
    .A(\u_dll/u_div1/syncN[0] ),
    .B(\u_dll/u_div1/_005_ ));
 sg13cmos5l_nor2b_1 \u_dll/u_div1/_065_  (.A(\u_dll/u_div1/_005_ ),
    .B_N(\u_dll/u_div1/count[0] ),
    .Y(\u_dll/u_div1/_022_ ));
 sg13cmos5l_a22oi_1 \u_dll/u_div1/_066_  (.Y(\u_dll/u_div1/_023_ ),
    .B1(\u_dll/u_div1/_022_ ),
    .B2(\u_dll/u_div1/_015_ ),
    .A2(\u_dll/u_div1/_020_ ),
    .A1(\u_dll/u_div1/count[1] ));
 sg13cmos5l_a22oi_1 \u_dll/u_div1/_067_  (.Y(\u_dll/u_div1/_024_ ),
    .B1(\u_dll/u_div1/_021_ ),
    .B2(\u_dll/u_div1/_023_ ),
    .A2(\u_dll/u_div1/_019_ ),
    .A1(\u_dll/u_div1/_013_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_div1/_068_  (.A1(\u_dll/u_div1/_012_ ),
    .A2(\u_dll/u_div1/_017_ ),
    .Y(\u_dll/u_div1/_025_ ),
    .B1(\u_dll/u_div1/_011_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div1/_069_  (.A(\u_dll/u_div1/_014_ ),
    .B(\u_dll/u_div1/_018_ ),
    .C(\u_dll/u_div1/_025_ ),
    .Y(\u_dll/u_div1/_026_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div1/_070_  (.A(\u_dll/u_div1/_013_ ),
    .B(\u_dll/u_div1/_019_ ),
    .Y(\u_dll/u_div1/_027_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div1/_071_  (.A(\u_dll/u_div1/_024_ ),
    .B(\u_dll/u_div1/_026_ ),
    .C(\u_dll/u_div1/_027_ ),
    .Y(\u_dll/u_div1/_028_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_div1/_072_  (.Y(\u_dll/u_div1/_029_ ),
    .A(\u_dll/u_div1/syncN[4] ),
    .B(\u_dll/u_div1/_018_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_div1/_073_  (.B1(\u_dll/u_div1/_014_ ),
    .Y(\u_dll/u_div1/_030_ ),
    .A1(\u_dll/u_div1/_018_ ),
    .A2(\u_dll/u_div1/_025_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_div1/_074_  (.B1(\u_dll/u_div1/_030_ ),
    .Y(\u_dll/u_div1/_031_ ),
    .A1(\u_dll/u_div1/count[4] ),
    .A2(\u_dll/u_div1/_029_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_div1/_075_  (.A1(\u_dll/u_div1/count[4] ),
    .A2(\u_dll/u_div1/_029_ ),
    .Y(\u_dll/u_div1/_032_ ),
    .B1(\u_dll/u_div1/_016_ ));
 sg13cmos5l_o21ai_1 \u_dll/u_div1/_076_  (.B1(\u_dll/u_div1/_032_ ),
    .Y(\u_dll/u_div1/_033_ ),
    .A1(\u_dll/u_div1/_028_ ),
    .A2(\u_dll/u_div1/_031_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div1/_077_  (.A(\u_dll/u_div1/count[0] ),
    .B(\u_dll/u_div1/_033_ ),
    .Y(\u_dll/u_div1/_000_ ));
 sg13cmos5l_and2_1 \u_dll/u_div1/_078_  (.A(\u_dll/u_div1/count[0] ),
    .B(\u_dll/u_div1/count[1] ),
    .X(\u_dll/u_div1/_034_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div1/_079_  (.A(\u_dll/u_div1/count[0] ),
    .B(\u_dll/u_div1/count[1] ),
    .Y(\u_dll/u_div1/_035_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div1/_080_  (.A(\u_dll/u_div1/_033_ ),
    .B(\u_dll/u_div1/_034_ ),
    .C(\u_dll/u_div1/_035_ ),
    .Y(\u_dll/u_div1/_001_ ));
 sg13cmos5l_nand2_1 \u_dll/u_div1/_081_  (.Y(\u_dll/u_div1/_036_ ),
    .A(\u_dll/u_div1/count[2] ),
    .B(\u_dll/u_div1/_034_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_div1/_082_  (.Y(\u_dll/u_div1/_037_ ),
    .A(\u_dll/u_div1/count[2] ),
    .B(\u_dll/u_div1/_034_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div1/_083_  (.A(\u_dll/u_div1/_033_ ),
    .B(\u_dll/u_div1/_037_ ),
    .Y(\u_dll/u_div1/_002_ ));
 sg13cmos5l_nand3_1 \u_dll/u_div1/_084_  (.B(\u_dll/u_div1/count[3] ),
    .C(\u_dll/u_div1/_034_ ),
    .A(\u_dll/u_div1/count[2] ),
    .Y(\u_dll/u_div1/_038_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_div1/_085_  (.Y(\u_dll/u_div1/_039_ ),
    .A(\u_dll/u_div1/_014_ ),
    .B(\u_dll/u_div1/_036_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div1/_086_  (.A(\u_dll/u_div1/_033_ ),
    .B(\u_dll/u_div1/_039_ ),
    .Y(\u_dll/u_div1/_003_ ));
 sg13cmos5l_xor2_1 \u_dll/u_div1/_087_  (.B(\u_dll/u_div1/_038_ ),
    .A(\u_dll/u_div1/count[4] ),
    .X(\u_dll/u_div1/_040_ ));
 sg13cmos5l_nor2_1 \u_dll/u_div1/_088_  (.A(\u_dll/u_div1/_033_ ),
    .B(\u_dll/u_div1/_040_ ),
    .Y(\u_dll/u_div1/_004_ ));
 sg13cmos5l_xor2_1 \u_dll/u_div1/_089_  (.B(\u_dll/u_div1/count[1] ),
    .A(\u_dll/u_div1/syncN[2] ),
    .X(\u_dll/u_div1/_041_ ));
 sg13cmos5l_xor2_1 \u_dll/u_div1/_090_  (.B(\u_dll/u_div1/_005_ ),
    .A(\u_dll/u_div1/count[0] ),
    .X(\u_dll/u_div1/_042_ ));
 sg13cmos5l_xnor2_1 \u_dll/u_div1/_091_  (.Y(\u_dll/u_div1/_043_ ),
    .A(\u_dll/u_div1/syncN[3] ),
    .B(\u_dll/u_div1/count[2] ));
 sg13cmos5l_xnor2_1 \u_dll/u_div1/_092_  (.Y(\u_dll/u_div1/_044_ ),
    .A(\u_dll/u_div1/syncN[4] ),
    .B(\u_dll/u_div1/count[3] ));
 sg13cmos5l_nand3_1 \u_dll/u_div1/_093_  (.B(\u_dll/u_div1/_043_ ),
    .C(\u_dll/u_div1/_044_ ),
    .A(\u_dll/u_div1/_042_ ),
    .Y(\u_dll/u_div1/_045_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div1/_094_  (.A(\u_dll/u_div1/count[4] ),
    .B(\u_dll/u_div1/_041_ ),
    .C(\u_dll/u_div1/_045_ ),
    .Y(\u_dll/u_div1/_046_ ));
 sg13cmos5l_nor3_1 \u_dll/u_div1/_095_  (.A(\u_dll/u_div1/count[2] ),
    .B(\u_dll/u_div1/count[4] ),
    .C(\u_dll/u_div1/count[3] ),
    .Y(\u_dll/u_div1/_047_ ));
 sg13cmos5l_a21oi_1 \u_dll/u_div1/_096_  (.A1(\u_dll/u_div1/_035_ ),
    .A2(\u_dll/u_div1/_047_ ),
    .Y(\u_dll/u_div1/_048_ ),
    .B1(\u_dll/u_div1/high_pos ));
 sg13cmos5l_nor3_1 \u_dll/u_div1/_097_  (.A(\u_dll/u_div1/_016_ ),
    .B(\u_dll/u_div1/_046_ ),
    .C(\u_dll/u_div1/_048_ ),
    .Y(\u_dll/u_div1/_010_ ));
 sg13cmos5l_buf_1 \u_dll/u_div1/_098_  (.A(\u_dll/u_div1/_006_ ),
    .X(\u_dll/u_div1/_007_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_099_  (.RESET_B(\u_dll/divider_resetb[1] ),
    .D(\u_dll/u_div1/_010_ ),
    .Q(\u_dll/u_div1/high_pos ),
    .CLK(\u_dll/u_div1/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_100_  (.RESET_B(\u_dll/divider_resetb[1] ),
    .D(\u_dll/u_div1/high_pos ),
    .Q(\u_dll/u_div1/high_neg ),
    .CLK(\u_dll/u_div1/_009_ ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_101_  (.RESET_B(\u_dll/divider_resetb[1] ),
    .D(\u_dll/u_div1/_000_ ),
    .Q(\u_dll/u_div1/count[0] ),
    .CLK(\u_dll/u_div1/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_102_  (.RESET_B(\u_dll/divider_resetb[1] ),
    .D(\u_dll/u_div1/_001_ ),
    .Q(\u_dll/u_div1/count[1] ),
    .CLK(\u_dll/u_div1/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_103_  (.RESET_B(\u_dll/divider_resetb[1] ),
    .D(\u_dll/u_div1/_002_ ),
    .Q(\u_dll/u_div1/count[2] ),
    .CLK(\u_dll/u_div1/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_104_  (.RESET_B(\u_dll/divider_resetb[1] ),
    .D(\u_dll/u_div1/_003_ ),
    .Q(\u_dll/u_div1/count[3] ),
    .CLK(\u_dll/u_div1/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_105_  (.RESET_B(\u_dll/divider_resetb[1] ),
    .D(\u_dll/u_div1/_004_ ),
    .Q(\u_dll/u_div1/count[4] ),
    .CLK(\u_dll/u_div1/clk_count ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_106_  (.RESET_B(\u_dll/u_div1/net60 ),
    .D(\u_dll/u_div1/syncNp[0] ),
    .Q(\u_dll/u_div1/syncN[0] ),
    .CLK(\u_dll/u_div1/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_107_  (.RESET_B(\u_dll/u_div1/net60 ),
    .D(\u_dll/u_div1/_007_ ),
    .Q(\u_dll/u_div1/_005_ ),
    .CLK(\u_dll/u_div1/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_108_  (.RESET_B(\u_dll/u_div1/net60 ),
    .D(\u_dll/u_div1/syncNp[2] ),
    .Q(\u_dll/u_div1/syncN[2] ),
    .CLK(\u_dll/u_div1/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_109_  (.RESET_B(\u_dll/u_div1/net60 ),
    .D(\u_dll/u_div1/syncNp[3] ),
    .Q(\u_dll/u_div1/syncN[3] ),
    .CLK(\u_dll/u_div1/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_110_  (.RESET_B(\u_dll/u_div1/net60 ),
    .D(\u_dll/u_div1/syncNp[4] ),
    .Q(\u_dll/u_div1/syncN[4] ),
    .CLK(\u_dll/u_div1/clk_config ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_111_  (.RESET_B(\u_dll/u_div1/net60 ),
    .D(uio_in[2]),
    .Q(\u_dll/u_div1/syncNp[0] ),
    .CLK(\u_dll/u_div1/clk_sample ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_112_  (.RESET_B(\u_dll/net61 ),
    .D(\u_dll/u_div1/_008_ ),
    .Q(\u_dll/u_div1/_006_ ),
    .CLK(\u_dll/u_div1/clk_sample ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_113_  (.RESET_B(\u_dll/u_div1/net60 ),
    .D(uio_in[4]),
    .Q(\u_dll/u_div1/syncNp[2] ),
    .CLK(\u_dll/u_div1/clk_sample ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_114_  (.RESET_B(\u_dll/net61 ),
    .D(uio_in[5]),
    .Q(\u_dll/u_div1/syncNp[3] ),
    .CLK(\u_dll/u_div1/clk_sample ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_div1/_115_  (.RESET_B(\u_dll/u_div1/net60 ),
    .D(uio_in[6]),
    .Q(\u_dll/u_div1/syncNp[4] ),
    .CLK(\u_dll/u_div1/clk_sample ));
 sg13cmos5l_buf_1 \u_dll/u_div1/fanout60  (.A(\u_dll/net61 ),
    .X(\u_dll/u_div1/net60 ));
 sg13cmos5l_nand2_2 \u_dll/u_div1/u_bypass_mux/u_a0  (.Y(\u_dll/u_div1/u_bypass_mux/n0 ),
    .A(\u_dll/u_div1/enabled_high ),
    .B(\u_dll/u_div1/u_bypass_mux/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_div1/u_bypass_mux/u_a1  (.Y(\u_dll/u_div1/u_bypass_mux/n1 ),
    .A(\u_dll/divider_clk[1] ),
    .B(\u_dll/u_div1/bypass ));
 sg13cmos5l_nand2_2 \u_dll/u_div1/u_bypass_mux/u_merge  (.Y(\u_dll/u_div1/selected ),
    .A(\u_dll/u_div1/u_bypass_mux/n0 ),
    .B(\u_dll/u_div1/u_bypass_mux/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_div1/u_bypass_mux/u_sel  (.Y(\u_dll/u_div1/u_bypass_mux/sn ),
    .A(\u_dll/u_div1/bypass ));
 sg13cmos5l_buf_4 \u_dll/u_div1/u_clkbuf_config/u_buf  (.X(\u_dll/u_div1/clk_config ),
    .A(\u_dll/divider_clk[1] ));
 sg13cmos5l_buf_4 \u_dll/u_div1/u_clkbuf_count/u_buf  (.X(\u_dll/u_div1/clk_count ),
    .A(\u_dll/divider_clk[1] ));
 sg13cmos5l_buf_16 \u_dll/u_div1/u_clkbuf_out/u_buf  (.X(clk1),
    .A(\u_dll/u_div1/output_p ));
 sg13cmos5l_buf_4 \u_dll/u_div1/u_clkbuf_sample/u_buf  (.X(\u_dll/u_div1/clk_sample ),
    .A(\u_dll/divider_clk[1] ));
 sg13cmos5l_or2_1 \u_dll/u_div1/u_odd_extend/u_or  (.X(\u_dll/u_div1/odd_high ),
    .B(\u_dll/u_div1/high_neg ),
    .A(\u_dll/u_div1/high_pos ));
 sg13cmos5l_inv_2 \u_dll/u_div1/u_output_inv0/u_inv  (.Y(\u_dll/u_div1/output_n ),
    .A(\u_dll/u_div1/running ));
 sg13cmos5l_inv_2 \u_dll/u_div1/u_output_inv1/u_inv  (.Y(\u_dll/u_div1/output_p ),
    .A(\u_dll/u_div1/output_n ));
 sg13cmos5l_nand2_2 \u_dll/u_div1/u_parity_mux/u_a0  (.Y(\u_dll/u_div1/u_parity_mux/n0 ),
    .A(\u_dll/u_div1/high_pos ),
    .B(\u_dll/u_div1/u_parity_mux/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_div1/u_parity_mux/u_a1  (.Y(\u_dll/u_div1/u_parity_mux/n1 ),
    .A(\u_dll/u_div1/odd_high ),
    .B(\u_dll/u_div1/syncN[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_div1/u_parity_mux/u_merge  (.Y(\u_dll/u_div1/divided_high ),
    .A(\u_dll/u_div1/u_parity_mux/n0 ),
    .B(\u_dll/u_div1/u_parity_mux/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_div1/u_parity_mux/u_sel  (.Y(\u_dll/u_div1/u_parity_mux/sn ),
    .A(\u_dll/u_div1/syncN[0] ));
 sg13cmos5l_and2_2 \u_dll/u_div1/u_run_gate/u_and  (.A(\u_dll/u_div1/selected ),
    .B(\u_dll/divider_resetb[1] ),
    .X(\u_dll/u_div1/running ));
 sg13cmos5l_and2_2 \u_dll/u_div1/u_valid_gate/u_and  (.A(\u_dll/u_div1/divided_high ),
    .B(\u_dll/u_div1/valid ),
    .X(\u_dll/u_div1/enabled_high ));
 sg13cmos5l_buf_4 \u_dll/u_div1_buffer/u_buf  (.X(\u_dll/divider_clk[1] ),
    .A(\u_dll/ring_clk ));
 sg13cmos5l_buf_4 \u_dll/u_div1_reset_buffer/u_buf  (.X(\u_dll/divider_resetb[1] ),
    .A(\u_dll/run_resetb ));
 sg13cmos5l_buf_4 \u_dll/u_enable_buffer/u_buf  (.X(\u_dll/enable_buffered ),
    .A(ena));
 sg13cmos5l_buf_2 \u_dll/u_ref_buffer/u_buf  (.A(clk),
    .X(\u_dll/controller_ref_clk ));
 sg13cmos5l_buf_4 \u_dll/u_resetb_buffer/u_buf  (.X(\u_dll/resetb_buffered ),
    .A(rst_n));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[0].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[0].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[0].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[0].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[0].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[0] ),
    .X(\u_dll/u_ring/dstage[0].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[0].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[0].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[0].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[0].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[0].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[0].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[0].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[0].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[0].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[0].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[0].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[0].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[0] ),
    .B(\u_dll/u_ring/dstage[0].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[0].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[0].id/core/selected ),
    .A(\u_dll/u_ring/dstage[0].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[0].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[0].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[0].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[0].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[0].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[0].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[0].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[0].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[0].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[0].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[0].id/core/selected ),
    .B(\u_dll/u_ring/dstage[0].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[0].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[0].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[0].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[0].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[0].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[0].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[0].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[1] ),
    .A2(\u_dll/u_ring/dstage[0].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[0] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[0].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[0].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[0].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[0].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[0].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[0].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[0].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[0].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[0].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[0].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[0].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[0].id/core/short_n ),
    .A(\u_dll/u_ring/d[0] ),
    .B(\u_dll/u_ring/dstage[0].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[0].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[0] ),
    .X(\u_dll/u_ring/t[0] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[0].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[0].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[0] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[0].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[0].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[0].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[0].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[0].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[0].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[0].id/core/trim_reset_n ),
    .D(\u_dll/trim[0] ),
    .Q(\u_dll/u_ring/dstage[0].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[0].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[0].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[0].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[0].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[0].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[0].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[0].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[0].id/core/trim_reset_n ),
    .D(\u_dll/trim[13] ),
    .Q(\u_dll/u_ring/dstage[0].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[0].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[10].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[10].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[10].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[10].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[10].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[10] ),
    .X(\u_dll/u_ring/dstage[10].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[10].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[10].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[10].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[10].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[10].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[10].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[10].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[10].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[10].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[10].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[10].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[10].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[10] ),
    .B(\u_dll/u_ring/dstage[10].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[10].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[10].id/core/selected ),
    .A(\u_dll/u_ring/dstage[10].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[10].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[10].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[10].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[10].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[10].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[10].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[10].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[10].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[10].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[10].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[10].id/core/selected ),
    .B(\u_dll/u_ring/dstage[10].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[10].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[10].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[10].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[10].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[10].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[10].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[10].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[11] ),
    .A2(\u_dll/u_ring/dstage[10].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[10] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[10].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[10].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[10].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[10].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[10].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[10].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[10].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[10].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[10].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[10].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[10].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[10].id/core/short_n ),
    .A(\u_dll/u_ring/d[10] ),
    .B(\u_dll/u_ring/dstage[10].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[10].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[10] ),
    .X(\u_dll/u_ring/t[10] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[10].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[10].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[3] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[10].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[10].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[10].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[10].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[10].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[10].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[10].id/core/trim_reset_n ),
    .D(\u_dll/trim[10] ),
    .Q(\u_dll/u_ring/dstage[10].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[10].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[10].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[10].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[10].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[10].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[10].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[10].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[10].id/core/trim_reset_n ),
    .D(\u_dll/trim[23] ),
    .Q(\u_dll/u_ring/dstage[10].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[10].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[11].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[11].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[11].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[11].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[11].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[11] ),
    .X(\u_dll/u_ring/dstage[11].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[11].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[11].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[11].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[11].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[11].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[11].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[11].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[11].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[11].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[11].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[11].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[11].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[11] ),
    .B(\u_dll/u_ring/dstage[11].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[11].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[11].id/core/selected ),
    .A(\u_dll/u_ring/dstage[11].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[11].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[11].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[11].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[11].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[11].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[11].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[11].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[11].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[11].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[11].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[11].id/core/selected ),
    .B(\u_dll/u_ring/dstage[11].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[11].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[11].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[11].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[11].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[11].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[11].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[11].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[12] ),
    .A2(\u_dll/u_ring/dstage[11].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[11] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[11].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[11].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[11].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[11].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[11].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[11].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[11].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[11].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[11].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[11].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[11].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[11].id/core/short_n ),
    .A(\u_dll/u_ring/d[11] ),
    .B(\u_dll/u_ring/dstage[11].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[11].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[11] ),
    .X(\u_dll/u_ring/t[11] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[11].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[11].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[3] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[11].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[11].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[11].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[11].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[11].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[11].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[11].id/core/trim_reset_n ),
    .D(\u_dll/trim[11] ),
    .Q(\u_dll/u_ring/dstage[11].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[11].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[11].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[11].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[11].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[11].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[11].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[11].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[11].id/core/trim_reset_n ),
    .D(\u_dll/trim[24] ),
    .Q(\u_dll/u_ring/dstage[11].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[11].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[1].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[1].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[1].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[1].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[1].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[1] ),
    .X(\u_dll/u_ring/dstage[1].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[1].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[1].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[1].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[1].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[1].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[1].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[1].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[1].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[1].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[1].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[1].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[1].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[1] ),
    .B(\u_dll/u_ring/dstage[1].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[1].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[1].id/core/selected ),
    .A(\u_dll/u_ring/dstage[1].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[1].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[1].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[1].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[1].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[1].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[1].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[1].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[1].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[1].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[1].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[1].id/core/selected ),
    .B(\u_dll/u_ring/dstage[1].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[1].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[1].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[1].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[1].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[1].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[1].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[1].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[2] ),
    .A2(\u_dll/u_ring/dstage[1].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[1] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[1].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[1].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[1].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[1].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[1].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[1].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[1].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[1].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[1].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[1].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[1].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[1].id/core/short_n ),
    .A(\u_dll/u_ring/d[1] ),
    .B(\u_dll/u_ring/dstage[1].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[1].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[1] ),
    .X(\u_dll/u_ring/t[1] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[1].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[1].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[0] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[1].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[1].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[1].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[1].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[1].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[1].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[1].id/core/trim_reset_n ),
    .D(\u_dll/trim[1] ),
    .Q(\u_dll/u_ring/dstage[1].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[1].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[1].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[1].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[1].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[1].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[1].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[1].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[1].id/core/trim_reset_n ),
    .D(\u_dll/trim[14] ),
    .Q(\u_dll/u_ring/dstage[1].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[1].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[2].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[2].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[2].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[2].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[2].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[2] ),
    .X(\u_dll/u_ring/dstage[2].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[2].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[2].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[2].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[2].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[2].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[2].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[2].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[2].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[2].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[2].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[2].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[2].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[2] ),
    .B(\u_dll/u_ring/dstage[2].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[2].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[2].id/core/selected ),
    .A(\u_dll/u_ring/dstage[2].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[2].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[2].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[2].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[2].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[2].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[2].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[2].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[2].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[2].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[2].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[2].id/core/selected ),
    .B(\u_dll/u_ring/dstage[2].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[2].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[2].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[2].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[2].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[2].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[2].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[2].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[3] ),
    .A2(\u_dll/u_ring/dstage[2].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[2] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[2].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[2].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[2].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[2].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[2].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[2].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[2].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[2].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[2].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[2].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[2].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[2].id/core/short_n ),
    .A(\u_dll/u_ring/d[2] ),
    .B(\u_dll/u_ring/dstage[2].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[2].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[2] ),
    .X(\u_dll/u_ring/t[2] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[2].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[2].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[0] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[2].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[2].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[2].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[2].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[2].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[2].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[2].id/core/trim_reset_n ),
    .D(\u_dll/trim[2] ),
    .Q(\u_dll/u_ring/dstage[2].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[2].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[2].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[2].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[2].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[2].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[2].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[2].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[2].id/core/trim_reset_n ),
    .D(\u_dll/trim[15] ),
    .Q(\u_dll/u_ring/dstage[2].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[2].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[3].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[3].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[3].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[3].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[3].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[3] ),
    .X(\u_dll/u_ring/dstage[3].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[3].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[3].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[3].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[3].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[3].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[3].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[3].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[3].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[3].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[3].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[3].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[3].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[3] ),
    .B(\u_dll/u_ring/dstage[3].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[3].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[3].id/core/selected ),
    .A(\u_dll/u_ring/dstage[3].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[3].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[3].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[3].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[3].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[3].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[3].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[3].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[3].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[3].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[3].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[3].id/core/selected ),
    .B(\u_dll/u_ring/dstage[3].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[3].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[3].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[3].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[3].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[3].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[3].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[3].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[4] ),
    .A2(\u_dll/u_ring/dstage[3].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[3] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[3].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[3].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[3].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[3].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[3].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[3].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[3].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[3].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[3].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[3].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[3].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[3].id/core/short_n ),
    .A(\u_dll/u_ring/d[3] ),
    .B(\u_dll/u_ring/dstage[3].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[3].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[3] ),
    .X(\u_dll/u_ring/t[3] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[3].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[3].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[1] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[3].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[3].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[3].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[3].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[3].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[3].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[3].id/core/trim_reset_n ),
    .D(\u_dll/trim[3] ),
    .Q(\u_dll/u_ring/dstage[3].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[3].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[3].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[3].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[3].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[3].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[3].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[3].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[3].id/core/trim_reset_n ),
    .D(\u_dll/trim[16] ),
    .Q(\u_dll/u_ring/dstage[3].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[3].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[4].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[4].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[4].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[4].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[4].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[4] ),
    .X(\u_dll/u_ring/dstage[4].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[4].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[4].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[4].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[4].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[4].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[4].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[4].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[4].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[4].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[4].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[4].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[4].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[4] ),
    .B(\u_dll/u_ring/dstage[4].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[4].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[4].id/core/selected ),
    .A(\u_dll/u_ring/dstage[4].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[4].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[4].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[4].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[4].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[4].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[4].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[4].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[4].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[4].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[4].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[4].id/core/selected ),
    .B(\u_dll/u_ring/dstage[4].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[4].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[4].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[4].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[4].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[4].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[4].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[4].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[5] ),
    .A2(\u_dll/u_ring/dstage[4].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[4] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[4].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[4].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[4].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[4].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[4].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[4].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[4].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[4].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[4].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[4].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[4].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[4].id/core/short_n ),
    .A(\u_dll/u_ring/d[4] ),
    .B(\u_dll/u_ring/dstage[4].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[4].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[4] ),
    .X(\u_dll/u_ring/t[4] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[4].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[4].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[1] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[4].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[4].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[4].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[4].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[4].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[4].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[4].id/core/trim_reset_n ),
    .D(\u_dll/trim[4] ),
    .Q(\u_dll/u_ring/dstage[4].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[4].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[4].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[4].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[4].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[4].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[4].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[4].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[4].id/core/trim_reset_n ),
    .D(\u_dll/trim[17] ),
    .Q(\u_dll/u_ring/dstage[4].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[4].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[5].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[5].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[5].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[5].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[5].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[5] ),
    .X(\u_dll/u_ring/dstage[5].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[5].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[5].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[5].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[5].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[5].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[5].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[5].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[5].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[5].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[5].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[5].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[5].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[5] ),
    .B(\u_dll/u_ring/dstage[5].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[5].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[5].id/core/selected ),
    .A(\u_dll/u_ring/dstage[5].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[5].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[5].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[5].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[5].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[5].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[5].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[5].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[5].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[5].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[5].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[5].id/core/selected ),
    .B(\u_dll/u_ring/dstage[5].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[5].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[5].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[5].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[5].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[5].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[5].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[5].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[6] ),
    .A2(\u_dll/u_ring/dstage[5].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[5] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[5].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[5].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[5].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[5].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[5].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[5].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[5].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[5].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[5].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[5].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[5].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[5].id/core/short_n ),
    .A(\u_dll/u_ring/d[5] ),
    .B(\u_dll/u_ring/dstage[5].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[5].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[5] ),
    .X(\u_dll/u_ring/t[5] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[5].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[5].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[1] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[5].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[5].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[5].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[5].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[5].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[5].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[5].id/core/trim_reset_n ),
    .D(\u_dll/trim[5] ),
    .Q(\u_dll/u_ring/dstage[5].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[5].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[5].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[5].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[5].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[5].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[5].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[5].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[5].id/core/trim_reset_n ),
    .D(\u_dll/trim[18] ),
    .Q(\u_dll/u_ring/dstage[5].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[5].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[6].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[6].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[6].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[6].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[6].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[6] ),
    .X(\u_dll/u_ring/dstage[6].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[6].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[6].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[6].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[6].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[6].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[6].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[6].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[6].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[6].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[6].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[6].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[6].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[6] ),
    .B(\u_dll/u_ring/dstage[6].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[6].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[6].id/core/selected ),
    .A(\u_dll/u_ring/dstage[6].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[6].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[6].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[6].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[6].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[6].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[6].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[6].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[6].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[6].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[6].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[6].id/core/selected ),
    .B(\u_dll/u_ring/dstage[6].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[6].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[6].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[6].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[6].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[6].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[6].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[6].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[7] ),
    .A2(\u_dll/u_ring/dstage[6].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[6] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[6].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[6].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[6].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[6].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[6].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[6].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[6].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[6].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[6].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[6].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[6].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[6].id/core/short_n ),
    .A(\u_dll/u_ring/d[6] ),
    .B(\u_dll/u_ring/dstage[6].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[6].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[6] ),
    .X(\u_dll/u_ring/t[6] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[6].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[6].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[2] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[6].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[6].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[6].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[6].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[6].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[6].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[6].id/core/trim_reset_n ),
    .D(\u_dll/trim[6] ),
    .Q(\u_dll/u_ring/dstage[6].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[6].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[6].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[6].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[6].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[6].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[6].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[6].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[6].id/core/trim_reset_n ),
    .D(\u_dll/trim[19] ),
    .Q(\u_dll/u_ring/dstage[6].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[6].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[7].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[7].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[7].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[7].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[7].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[7] ),
    .X(\u_dll/u_ring/dstage[7].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[7].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[7].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[7].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[7].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[7].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[7].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[7].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[7].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[7].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[7].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[7].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[7].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[7] ),
    .B(\u_dll/u_ring/dstage[7].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[7].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[7].id/core/selected ),
    .A(\u_dll/u_ring/dstage[7].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[7].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[7].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[7].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[7].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[7].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[7].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[7].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[7].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[7].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[7].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[7].id/core/selected ),
    .B(\u_dll/u_ring/dstage[7].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[7].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[7].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[7].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[7].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[7].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[7].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[7].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[8] ),
    .A2(\u_dll/u_ring/dstage[7].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[7] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[7].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[7].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[7].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[7].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[7].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[7].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[7].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[7].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[7].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[7].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[7].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[7].id/core/short_n ),
    .A(\u_dll/u_ring/d[7] ),
    .B(\u_dll/u_ring/dstage[7].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[7].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[7] ),
    .X(\u_dll/u_ring/t[7] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[7].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[7].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[2] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[7].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[7].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[7].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[7].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[7].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[7].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[7].id/core/trim_reset_n ),
    .D(\u_dll/trim[7] ),
    .Q(\u_dll/u_ring/dstage[7].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[7].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[7].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[7].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[7].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[7].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[7].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[7].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[7].id/core/trim_reset_n ),
    .D(\u_dll/trim[20] ),
    .Q(\u_dll/u_ring/dstage[7].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[7].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[8].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[8].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[8].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[8].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[8].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[8] ),
    .X(\u_dll/u_ring/dstage[8].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[8].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[8].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[8].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[8].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[8].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[8].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[8].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[8].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[8].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[8].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[8].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[8].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[8] ),
    .B(\u_dll/u_ring/dstage[8].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[8].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[8].id/core/selected ),
    .A(\u_dll/u_ring/dstage[8].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[8].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[8].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[8].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[8].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[8].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[8].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[8].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[8].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[8].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[8].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[8].id/core/selected ),
    .B(\u_dll/u_ring/dstage[8].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[8].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[8].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[8].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[8].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[8].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[8].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[8].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[9] ),
    .A2(\u_dll/u_ring/dstage[8].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[8] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[8].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[8].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[8].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[8].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[8].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[8].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[8].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[8].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[8].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[8].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[8].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[8].id/core/short_n ),
    .A(\u_dll/u_ring/d[8] ),
    .B(\u_dll/u_ring/dstage[8].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[8].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[8] ),
    .X(\u_dll/u_ring/t[8] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[8].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[8].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[2] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[8].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[8].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[8].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[8].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[8].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[8].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[8].id/core/trim_reset_n ),
    .D(\u_dll/trim[8] ),
    .Q(\u_dll/u_ring/dstage[8].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[8].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[8].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[8].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[8].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[8].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[8].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[8].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[8].id/core/trim_reset_n ),
    .D(\u_dll/trim[21] ),
    .Q(\u_dll/u_ring/dstage[8].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[8].id/core/d1 ));
 sg13cmos5l_tiehi \u_dll/u_ring/dstage[9].id/const0/u_hi  (.L_HI(\u_dll/u_ring/dstage[9].id/const0/HI ));
 sg13cmos5l_tielo \u_dll/u_ring/dstage[9].id/const0/u_lo  (.L_LO(\u_dll/u_ring/dstage[9].id/zero ));
 sg13cmos5l_buf_1 \u_dll/u_ring/dstage[9].id/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[9] ),
    .X(\u_dll/u_ring/dstage[9].id/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[9].id/core/delayint0/u_inv  (.Y(\u_dll/u_ring/dstage[9].id/core/d2 ),
    .A(\u_dll/u_ring/dstage[9].id/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[9].id/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/dstage[9].id/core/d1 ),
    .A(\u_dll/u_ring/dstage[9].id/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[9].id/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/dstage[9].id/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/dstage[9].id/core/d2 ),
    .B(\u_dll/u_ring/dstage[9].id/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[9].id/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/dstage[9].id/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[9] ),
    .B(\u_dll/u_ring/dstage[9].id/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[9].id/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/dstage[9].id/core/selected ),
    .A(\u_dll/u_ring/dstage[9].id/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/dstage[9].id/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[9].id/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/dstage[9].id/core/delaymux1/sn ),
    .A(\u_dll/u_ring/dstage[9].id/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/dstage[9].id/core/fast_decode/u_nor  (.A(\u_dll/u_ring/dstage[9].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[9].id/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/dstage[9].id/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/dstage[9].id/core/long_gate/u_nand  (.Y(\u_dll/u_ring/dstage[9].id/core/long_n ),
    .A(\u_dll/u_ring/dstage[9].id/core/selected ),
    .B(\u_dll/u_ring/dstage[9].id/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/dstage[9].id/core/merge_gate/u_nand  (.B(\u_dll/u_ring/dstage[9].id/core/long_n ),
    .C(\u_dll/u_ring/dstage[9].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[9].id/core/short_n ),
    .Y(\u_dll/u_ring/dstage[9].id/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/dstage[9].id/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/dstage[9].id/core/slow_reset ),
    .Y(\u_dll/u_ring/d[10] ),
    .A2(\u_dll/u_ring/dstage[9].id/core/fast_select ),
    .A1(\u_dll/u_ring/d[9] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[9].id/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[9].id/core/reset_n ),
    .A(\u_dll/u_ring/dstage[9].id/zero ));
 sg13cmos5l_inv_1 \u_dll/u_ring/dstage[9].id/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/dstage[9].id/core/secondary_n ),
    .A(\u_dll/u_ring/dstage[9].id/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/dstage[9].id/core/short_decode/u_and  (.A(\u_dll/u_ring/dstage[9].id/core/trim_applied[0] ),
    .B(\u_dll/u_ring/dstage[9].id/core/secondary_n ),
    .X(\u_dll/u_ring/dstage[9].id/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/dstage[9].id/core/short_gate/u_nand  (.Y(\u_dll/u_ring/dstage[9].id/core/short_n ),
    .A(\u_dll/u_ring/d[9] ),
    .B(\u_dll/u_ring/dstage[9].id/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/dstage[9].id/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[9] ),
    .X(\u_dll/u_ring/t[9] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/dstage[9].id/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/dstage[9].id/core/trim_reset_n ),
    .A(\u_dll/u_ring/trim_reset_branch[3] ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[9].id/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[9].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[9].id/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/dstage[9].id/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/dstage[9].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[9].id/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[9].id/core/trim_reset_n ),
    .D(\u_dll/trim[9] ),
    .Q(\u_dll/u_ring/dstage[9].id/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/dstage[9].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[9].id/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/dstage[9].id/core/trim_reset_n ),
    .D(\u_dll/u_ring/dstage[9].id/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/dstage[9].id/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/dstage[9].id/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/dstage[9].id/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/dstage[9].id/core/trim_reset_n ),
    .D(\u_dll/trim[22] ),
    .Q(\u_dll/u_ring/dstage[9].id/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/dstage[9].id/core/d1 ));
 sg13cmos5l_buf_1 \u_dll/u_ring/iss/core/delaybuf1/u_buf  (.A(\u_dll/u_ring/t[12] ),
    .X(\u_dll/u_ring/iss/core/d0 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/iss/core/delayint0/u_inv  (.Y(\u_dll/u_ring/iss/core/d2 ),
    .A(\u_dll/u_ring/iss/core/d1 ));
 sg13cmos5l_inv_2 \u_dll/u_ring/iss/core/delayinv1/u_inv  (.Y(\u_dll/u_ring/iss/core/d1 ),
    .A(\u_dll/u_ring/iss/core/d0 ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/iss/core/delaymux1/u_a0  (.Y(\u_dll/u_ring/iss/core/delaymux1/n0 ),
    .A(\u_dll/u_ring/iss/core/d2 ),
    .B(\u_dll/u_ring/iss/core/delaymux1/sn ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/iss/core/delaymux1/u_a1  (.Y(\u_dll/u_ring/iss/core/delaymux1/n1 ),
    .A(\u_dll/u_ring/t[12] ),
    .B(\u_dll/u_ring/iss/core/trim_applied[0] ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/iss/core/delaymux1/u_merge  (.Y(\u_dll/u_ring/iss/core/selected ),
    .A(\u_dll/u_ring/iss/core/delaymux1/n0 ),
    .B(\u_dll/u_ring/iss/core/delaymux1/n1 ));
 sg13cmos5l_inv_1 \u_dll/u_ring/iss/core/delaymux1/u_sel  (.Y(\u_dll/u_ring/iss/core/delaymux1/sn ),
    .A(\u_dll/u_ring/iss/core/trim_applied[0] ));
 sg13cmos5l_nor2_2 \u_dll/u_ring/iss/core/fast_decode/u_nor  (.A(\u_dll/u_ring/iss/core/trim_applied[0] ),
    .B(\u_dll/u_ring/iss/core/trim_applied[1] ),
    .Y(\u_dll/u_ring/iss/core/fast_select ));
 sg13cmos5l_nand2_2 \u_dll/u_ring/iss/core/long_gate/u_nand  (.Y(\u_dll/u_ring/iss/core/long_n ),
    .A(\u_dll/u_ring/iss/core/selected ),
    .B(\u_dll/u_ring/iss/core/trim_applied[1] ));
 sg13cmos5l_nand3_1 \u_dll/u_ring/iss/core/merge_gate/u_nand  (.B(\u_dll/u_ring/iss/core/long_n ),
    .C(\u_dll/u_ring/iss/core/reset_n ),
    .A(\u_dll/u_ring/iss/core/short_n ),
    .Y(\u_dll/u_ring/iss/core/slow_reset ));
 sg13cmos5l_a21oi_2 \u_dll/u_ring/iss/core/reset_gate/u_aoi  (.B1(\u_dll/u_ring/iss/core/slow_reset ),
    .Y(\u_dll/u_ring/d[0] ),
    .A2(\u_dll/u_ring/iss/core/fast_select ),
    .A1(\u_dll/u_ring/d[12] ));
 sg13cmos5l_inv_1 \u_dll/u_ring/iss/core/reset_inv/u_inv  (.Y(\u_dll/u_ring/iss/core/reset_n ),
    .A(\u_dll/ring_reset ));
 sg13cmos5l_inv_1 \u_dll/u_ring/iss/core/secondary_inv/u_inv  (.Y(\u_dll/u_ring/iss/core/secondary_n ),
    .A(\u_dll/u_ring/iss/core/trim_applied[1] ));
 sg13cmos5l_and2_2 \u_dll/u_ring/iss/core/short_decode/u_and  (.A(\u_dll/u_ring/iss/core/trim_applied[0] ),
    .B(\u_dll/u_ring/iss/core/secondary_n ),
    .X(\u_dll/u_ring/iss/core/short_select ));
 sg13cmos5l_nand2_1 \u_dll/u_ring/iss/core/short_gate/u_nand  (.Y(\u_dll/u_ring/iss/core/short_n ),
    .A(\u_dll/u_ring/d[12] ),
    .B(\u_dll/u_ring/iss/core/short_select ));
 sg13cmos5l_buf_2 \u_dll/u_ring/iss/core/slow_isolation/u_buf  (.A(\u_dll/u_ring/d[12] ),
    .X(\u_dll/u_ring/t[12] ));
 sg13cmos5l_inv_2 \u_dll/u_ring/iss/core/trim_reset_inv/u_inv  (.Y(\u_dll/u_ring/iss/core/trim_reset_n ),
    .A(\u_dll/ring_reset ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/iss/core/trim_sync[0].applied/u_ff  (.RESET_B(\u_dll/u_ring/iss/core/trim_reset_n ),
    .D(\u_dll/u_ring/iss/core/trim_meta[0] ),
    .Q(\u_dll/u_ring/iss/core/trim_applied[0] ),
    .CLK(\u_dll/u_ring/iss/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/iss/core/trim_sync[0].meta/u_ff  (.RESET_B(\u_dll/u_ring/iss/core/trim_reset_n ),
    .D(\u_dll/trim[12] ),
    .Q(\u_dll/u_ring/iss/core/trim_meta[0] ),
    .CLK(\u_dll/u_ring/iss/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/iss/core/trim_sync[1].applied/u_ff  (.RESET_B(\u_dll/u_ring/iss/core/trim_reset_n ),
    .D(\u_dll/u_ring/iss/core/trim_meta[1] ),
    .Q(\u_dll/u_ring/iss/core/trim_applied[1] ),
    .CLK(\u_dll/u_ring/iss/core/d1 ));
 sg13cmos5l_dfrbpq_1 \u_dll/u_ring/iss/core/trim_sync[1].meta/u_ff  (.RESET_B(\u_dll/u_ring/iss/core/trim_reset_n ),
    .D(\u_dll/trim[25] ),
    .Q(\u_dll/u_ring/iss/core/trim_meta[1] ),
    .CLK(\u_dll/u_ring/iss/core/d1 ));
 sg13cmos5l_buf_4 \u_dll/u_ring/trim_reset_buffers[0].u_buffer/u_buf  (.X(\u_dll/u_ring/trim_reset_branch[0] ),
    .A(\u_dll/ring_reset ));
 sg13cmos5l_buf_4 \u_dll/u_ring/trim_reset_buffers[1].u_buffer/u_buf  (.X(\u_dll/u_ring/trim_reset_branch[1] ),
    .A(\u_dll/ring_reset ));
 sg13cmos5l_buf_4 \u_dll/u_ring/trim_reset_buffers[2].u_buffer/u_buf  (.X(\u_dll/u_ring/trim_reset_branch[2] ),
    .A(\u_dll/ring_reset ));
 sg13cmos5l_buf_4 \u_dll/u_ring/trim_reset_buffers[3].u_buffer/u_buf  (.X(\u_dll/u_ring/trim_reset_branch[3] ),
    .A(\u_dll/ring_reset ));
 sg13cmos5l_buf_8 \u_dll/u_ring/u_clkbuf/u_buf  (.A(\u_dll/u_ring/output_p ),
    .X(\u_dll/ring_clk ));
 sg13cmos5l_inv_2 \u_dll/u_ring/u_output_inv0/u_inv  (.Y(\u_dll/u_ring/output_n ),
    .A(\u_dll/u_ring/d[0] ));
 sg13cmos5l_inv_4 \u_dll/u_ring/u_output_inv1/u_inv  (.A(\u_dll/u_ring/output_n ),
    .Y(\u_dll/u_ring/output_p ));
 sg13cmos5l_buf_4 \u_dll/u_ring_reset_buffer/u_buf  (.X(\u_dll/ring_reset ),
    .A(\u_dll/net80 ));
 sg13cmos5l_buf_2 \u_dll/u_startup_buffer/u_buf  (.A(\u_dll/ring_clk ),
    .X(\u_dll/startup_clk ));
 sg13cmos5l_buf_8 \u_fabric0/u_buf  (.A(clk0),
    .X(uo_out[0]));
 sg13cmos5l_buf_8 \u_fabric1/u_buf  (.A(clk1),
    .X(uo_out[1]));
 sg13cmos5l_buf_8 \u_pad0/u_buf  (.A(clk0),
    .X(analog_0));
 sg13cmos5l_buf_8 \u_pad1/u_buf  (.A(clk1),
    .X(analog_1));
 assign analog_2 = net;
 assign uo_out[2] = stable;
 assign uio_oe[0] = net101;
 assign uio_oe[1] = net102;
 assign uio_oe[2] = net103;
 assign uio_oe[3] = net104;
 assign uio_oe[4] = net105;
 assign uio_oe[5] = net106;
 assign uio_oe[6] = net107;
 assign uio_oe[7] = net108;
 assign uio_out[0] = net109;
 assign uio_out[1] = net110;
 assign uio_out[2] = net111;
 assign uio_out[3] = net112;
 assign uio_out[4] = net113;
 assign uio_out[5] = net114;
 assign uio_out[6] = net115;
 assign uio_out[7] = net116;
 assign uo_out[3] = net117;
 assign uo_out[4] = net118;
 assign uo_out[5] = net119;
 assign uo_out[6] = net120;
 assign uo_out[7] = net121;
endmodule
