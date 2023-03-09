#ifndef _VSCALAR_TOP_H_
#define _VSCALAR_TOP_H_

#include "hls_video.h"
#include "ap_int.h"
#include "v_vscaler_config.h"

typedef unsigned char      U8;
typedef unsigned short     U16;
typedef unsigned int       U32;
typedef signed char        I8;
typedef signed short       I16;
typedef signed int         I32;
typedef signed long long   I64;
typedef unsigned long long U64;

#define Y_CH                   (0)
#define U_CH                   (1)
#define V_CH                   (2)

#define STEP_PRECISION_SHIFT    16
#define STEP_PRECISION          (1<<STEP_PRECISION_SHIFT)

#define COEFF_PRECISION_SHIFT   12
#define COEFF_PRECISION         (1<<COEFF_PRECISION_SHIFT)

//File I/O -- TO DO
#define SRC_IMAGE             "im10c_crophPoly120x1000_" //"im10c_croph_00000" //"zoneplate_pfspd2bmp1920x1080_00000"//"im10c_crop_00000" //"im10c_croph_00000" //"im10c_crop_00000" // //"Test_180x64_00000" //"im10c_croph_00000" //"Test_180x64_00000" //"BBC_HD_test_1920x1080"
#define OUTPUT_IMAGE_GOLDEN   "zoneplate_BiC1620x1920Vscale_Out00000" //"zoneplate_540x960Vscale_Out00000" //"zoneplate_1620x1920Vscale_Out00000" //"zoneplate_2160x1920Vscale_Out00000" //"imc_crophPoly120x2160_Vscale_Out00000" "zoneplatejj_1150x1920_Vscale_Out00000" //"zoneplate_P3840x2160_Vscale_Out00000" //"im10c_cropPoly1920x44_00000" //"im10c_crophPoly240x2160_Vscale_Out00000"//"im10c_cropPoly1920x44_00000" ////"Test180x8_Vscale_Out00000" //"TestPoly42_Vscale_Out00000" //"im10c_crophPoly720_Vscale_Out00000" //"TestPoly42_Vscale_Out00000" //"BBC_HD_test_1920x1080" //"im10cBiC3840_00000" //"im10cBiL1280_00000" //"im10cBiL3840_00000" im10cPoly1920_00000
#define OUTPUT_IMAGE_HLS      "zoneplate_BiC1620x1920Vscale_Out00000_hlsOut" //"zoneplate_540x960Vscale_00000_hlsOut" //"zoneplate_2160x1920Vscale_00000_hlsOut" //"imc_crophPoly120x2160_00000_hlsOut" //"zoneplate_1150x1920_00000_hlsOut" //"im10c_cropPoly1920x44_00000_hlsOut"//"im10c_crophPoly240x2160_Vscale_Out00000" //"im10c_cropPoly1920x44_00000_hlsOut" // //"Test180x8_00000_hlsOut" //"TestPoly42_00000_hlsOut"//"im10c_crophPoly720_00000_hlsOut" //"BBC_HD_test_1920x1080_hlsOut" "im10cBiL3840x1080_hlsOut" //"im10c3840x1080_hlsOut"

#define CLAMP(a,lo,hi)          ((a)<(lo)?(lo) : ((a)>(hi) ? (hi) : (a)))
#define MAX(a,b)                (((a)>(b))?(a):(b))
#define MIN(a,b)                (((a)<(b))?(a):(b))

typedef ap_uint<VSC_BITS_PER_COMPONENT>                                         PIXEL_TYPE;
typedef ap_uint<VSC_NR_COMPONENTS*VSC_SAMPLES_PER_CLOCK*VSC_BITS_PER_COMPONENT> MEM_PIXEL_TYPE;

typedef hls::Scalar<VSC_NR_COMPONENTS, PIXEL_TYPE>                           YUV_PIXEL;
typedef hls::Scalar<VSC_NR_COMPONENTS*VSC_SAMPLES_PER_CLOCK, PIXEL_TYPE>     YUV_MULTI_PIXEL;

typedef hls::stream<ap_axiu<(VSC_SAMPLES_PER_CLOCK*VSC_BITS_PER_COMPONENT*VSC_NR_COMPONENTS),1,1,1> >       VSC_AXI_STREAM_IN;
typedef hls::stream<ap_axiu<(VSC_SAMPLES_PER_CLOCK*VSC_BITS_PER_COMPONENT*VSC_NR_COMPONENTS),1,1,1> >       VSC_AXI_STREAM_OUT;
typedef hls::stream<YUV_MULTI_PIXEL>                                                                        VSC_STREAM_MPIX;

//if width/spc not an integer, then do +1 on the total size
typedef hls::LineBuffer<VSC_TAPS, (VSC_MAX_WIDTH/VSC_SAMPLES_PER_CLOCK), YUV_MULTI_PIXEL>   VSC_LINE_BUFFER;
typedef hls::LineBuffer<VSC_TAPS, (VSC_MAX_WIDTH/VSC_SAMPLES_PER_CLOCK), MEM_PIXEL_TYPE>    MEM_LINE_BUFFER;

// HW Registers
// The number of bits of some registers depend on the MAX values specified in
// the config.h file. TODO - how to take that in to account while defining the
// registers ?

typedef struct
{
    U16 HeightIn;
    U16 Width;          // Input H Resolution
    U16 HeightOut;      // Output V resolution
    U32 LineRate;       // in/out * 65536
    U8  ColorMode;      // RGB, 444, 420, 444
    I16 vfltCoeff[VSC_PHASES][VSC_TAPS];
}VSC_HW_STRUCT_REG;


// top level function for HW synthesis
extern void v_vscaler (VSC_AXI_STREAM_IN& VscIn,
                       //VSC_HW_STRUCT_REG HwReg,
		               U16 &HeightIn,
		               U16 &Width,
		               U16 &HeightOut,
		               U32 &LineRate,
		               U8  &ColorMode,
		               I16 vfltCoeff[VSC_PHASES][VSC_TAPS],
                       VSC_AXI_STREAM_OUT& VscOut
                       );

#endif
