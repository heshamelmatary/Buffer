//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Fri Feb 27 13:56:34 GMT 2015
//
// Method conflict info:
// Method: decode
// Conflict-free: decode
//
//
// Ports:
// Name                         I/O  size props
// decode                         O    10
// RDY_decode                     O     1 const
// CLK                            I     1 unused
// RST_N                          I     1 unused
// decode_instruction             I    32
//
// Combinational paths from inputs to outputs:
//   decode_instruction -> decode
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkDecode(CLK,
		RST_N,

		decode_instruction,
		decode,
		RDY_decode);
  input  CLK;
  input  RST_N;

  // value method decode
  input  [31 : 0] decode_instruction;
  output [9 : 0] decode;
  output RDY_decode;

  // signals for module outputs
  wire [9 : 0] decode;
  wire RDY_decode;

  // value method decode
  assign decode =
	     { (decode_instruction[14:12] == 3'b010) ? 2'd1 : 2'd0,
	       1'd0,
	       (decode_instruction[14:12] == 3'b010) ? 3'd3 : 3'd0,
	       (decode_instruction[14:12] == 3'b010) ? 2'd2 : 2'd0,
	       decode_instruction[14:12] == 3'b010,
	       1'd0 } ;
  assign RDY_decode = 1'd1 ;
endmodule  // mkDecode

