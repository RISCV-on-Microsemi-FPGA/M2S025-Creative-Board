/******************************************************************************
   Copyright (c) 2015 Synopsys, Inc.
   This model and the associated documentation are proprietary to Synopsys, Inc. 
   This model may only be used in accordance with the terms and conditions of a 
   written license agreement with Synopsys, Inc. All other use, reproduction,
   or distribution of this model is strictly prohibited.
*******************************************************************************
   Title      : Wrapper for the UJTAG module in Microsemi FPGA devices
   Project    : Identify
*******************************************************************************
   Description: Drop-in replacement for Microsemi's UJTAG module, to provide
                UJTAG access to the user's design even if it is instrumented
                using Identify.
*******************************************************************************
   Usage:       - Instantiate UJTAG_WRAPPER instead of UJTAG in your user design
                  (irrespective of whether you are going to instrument the 
                  design or not).
                  NOTES: - Two UJTAG OPCODEs are reserved for usage by Identify:
                           UIREG[5:1] = 5'b00001 and 
                           UIREG[5:1] = 5'b00010.
                         - Furthermore, UIREG[6] is used by Identify as 'enable'
                           signal.
                - Add this ujtag_wrapper.v file to the list of HDL source files
                  in your Synplify Pro project.
                - If you do want to debug the design using Identify, then
                  you have to `define IDENTIFY_DEBUG_IMPL.
                  You can also do this directly in Synplify Pro:
                  set_option -hdl_define -set IDENTIFY_DEBUG_IMPL
*******************************************************************************
   File       : ujtag_wrapper.v
   Author     : jalb
   Created    : 2015/03/13
   Last update: 2015/03/13
*******************************************************************************
           $Id:$

******************************************************************************/

module COREJTAGDEBUG_UJTAG_WRAPPER (
					  // Inputs
					  UTDO,
					  TDI,
					  TMS,
					  TCK,
					  TRSTB,
					  // Outputs
					  UDRCAP,
					  UDRSH,
					  UDRUPD,
					  UIREG,
					  URSTB,
					  UDRCK,
					  UTDI,
					  TDO
					  );
  
  input UTDO;
  input TDI;
  input TMS;
  input TCK;
  input TRSTB;
  output UDRCAP;
  output UDRSH;
  output UDRUPD;
  output [7:0] UIREG;
  output       URSTB;
  output 	   UDRCK;
  output       UTDI;
  output       TDO;

`ifndef IDENTIFY_DEBUG_IMPL

  //------ The original UJTAG module
  UJTAG UJTAG_inst(
				// Inputs
				.UTDO   ( UTDO ),
				.TDI    ( TDI ),
				.TMS    ( TMS ),
				.TCK    ( TCK ),
				.TRSTB  ( TRSTB ),
				// Outputs
				.UDRCAP ( UDRCAP ),
				.UDRSH  ( UDRSH ),
				.UDRUPD ( UDRUPD ),
				.UIREG  ( UIREG ),
				.URSTB  ( URSTB ),
				.UDRCK  ( UDRCK ),
				.UTDI   ( UTDI ),
				.TDO    ( TDO )
        );

`else

  wire 	 utdo_wire /* synthesis syn_keep=1 */ ;
  wire   tdi_wire /* synthesis syn_keep=1 */ ;
  wire   tms_wire /* synthesis syn_keep=1 */ ;
  wire   tck_wire /* synthesis syn_keep=1 */ ;
  wire   trstb_wire /* synthesis syn_keep=1 */ ;
  
  assign utdo_wire 	= UTDO ;
  assign tdi_wire 	= TDI;
  assign tms_wire 	= TMS;
  assign tck_wire 	= TCK;
  assign trstb_wire = TRSTB;
  
  // Hyper-connects to connect to the hyper-sources in the JTAG interface of the Identify IP core
  syn_hyper_connect_internal hyperc_ujtag_wrapper_uireg(UIREG) /* synthesis tag="ujtag_wrapper_uireg" */;
  defparam hyperc_ujtag_wrapper_uireg.w = 8;

  syn_hyper_connect_internal hyperc_ujtag_wrapper_urstb(URSTB) /* synthesis tag="ujtag_wrapper_urstb" */;
  defparam hyperc_ujtag_wrapper_urstb.w = 1;

  syn_hyper_connect_internal hyperc_ujtag_wrapper_udrupd(UDRUPD) /* synthesis tag="ujtag_wrapper_udrupd" */;
  defparam hyperc_ujtag_wrapper_udrupd.w = 1;

  syn_hyper_connect_internal hyperc_ujtag_wrapper_udrck(UDRCK) /* synthesis tag="ujtag_wrapper_udrck" */;
  defparam hyperc_ujtag_wrapper_udrck.w = 1;

  syn_hyper_connect_internal hyperc_ujtag_wrapper_udrcap(UDRCAP) /* synthesis tag="ujtag_wrapper_udrcap" */;
  defparam hyperc_ujtag_wrapper_udrcap.w = 1;

  syn_hyper_connect_internal hyperc_ujtag_wrapper_udrsh(UDRSH) /* synthesis tag="ujtag_wrapper_udrsh" */;
  defparam hyperc_ujtag_wrapper_udrsh.w = 1;

  syn_hyper_connect_internal hyperc_ujtag_wrapper_utdi(UTDI) /* synthesis tag="ujtag_wrapper_utdi" */;
  defparam hyperc_ujtag_wrapper_utdi.w = 1;

  syn_hyper_source_internal hypers_ujtag_wrapper_utdo(utdo_wire) /* synthesis tag="ujtag_wrapper_utdo" */;
  defparam hypers_ujtag_wrapper_utdo.w 	  = 1;

  // ... and ditto for the FPGA-level JTAG ports:
  syn_hyper_source_internal hypers_ujtag_wrapper_tdi(tdi_wire) /* synthesis tag="ujtag_wrapper_tdi" */;
  defparam hypers_ujtag_wrapper_tdi.w 	 = 1;

  syn_hyper_source_internal hypers_ujtag_wrapper_tms(tms_wire) /* synthesis tag="ujtag_wrapper_tms" */;
  defparam hypers_ujtag_wrapper_tms.w 	  = 1;
  
  syn_hyper_source_internal hypers_ujtag_wrapper_tck(tck_wire) /* synthesis tag="ujtag_wrapper_tck" */;
  defparam hypers_ujtag_wrapper_tck.w 	  = 1;

  syn_hyper_source_internal hypers_ujtag_wrapper_trstb(trstb_wire) /* synthesis tag="ujtag_wrapper_trstb" */;
  defparam hypers_ujtag_wrapper_trstb.w 	  = 1;

  syn_hyper_connect_internal hyperc_ujtag_wrapper_tdo(TDO) /* synthesis tag="ujtag_wrapper_tdo" */;
  defparam hyperc_ujtag_wrapper_tdo.w = 1;
  
`endif
  
endmodule // UJTAG_WRAPPER
