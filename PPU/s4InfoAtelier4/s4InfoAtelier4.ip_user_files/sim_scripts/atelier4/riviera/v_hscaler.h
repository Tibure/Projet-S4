#ifndef _V_HSCALER_TOP_H_
#define _V_HSCALER_TOP_H_

#include "hls_video.h"
#include "ap_int.h"
#include "v_hscaler_config.h"


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

#define HSC_MAX_BITS           (HSC_BITS_PER_COMPONENT*HSC_SAMPLES_PER_CLOCK)
#define MIN_PIXELS         (16)

#define STEP_PRECISION_SHIFT	16
#define STEP_PRECISION         	(1<<STEP_PRECISION_SHIFT)
#define COEFF_PRECISION_SHIFT	12
#define COEFF_PRECISION       	(1<<COEFF_PRECISION_SHIFT)
#define PIXEL_MAX              (1 << HSC_BITS_PER_COMPONENT) - 1

#define CLAMP(a,lo,hi)       ((a)<(lo)?(lo) : ((a)>(hi) ? (hi) : (a)))
#define MAX(a,b)			 	(((a)>(b))?(a):(b))
#define MIN(a,b)			 	(((a)<(b))?(a):(b))

typedef ap_uint<HSC_BITS_PER_COMPONENT> PIXEL_TYPE;
typedef ap_uint<HSC_SAMPLES_PER_CLOCK*HSC_BITS_PER_COMPONENT>   Y_MEM_PIXEL_TYPE;
typedef ap_uint<HSC_SAMPLES_PER_CLOCK*HSC_BITS_PER_COMPONENT>   C_MEM_PIXEL_TYPE;
typedef hls::Scalar<HSC_NR_COMPONENTS, PIXEL_TYPE>     YUV_PIXEL;
typedef hls::Scalar<HSC_NR_COMPONENTS*HSC_SAMPLES_PER_CLOCK, PIXEL_TYPE>     YUV_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE> Y_PIXEL;
typedef hls::Scalar<HSC_SAMPLES_PER_CLOCK, PIXEL_TYPE>  Y_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE> C_PIXEL;
typedef hls::Scalar<HSC_SAMPLES_PER_CLOCK, PIXEL_TYPE>  C_MULTI_PIXEL;
typedef hls::stream<ap_axiu<(HSC_MAX_BITS*HSC_NR_COMPONENTS),1,1,1> >       HSC_AXI_STREAM_IN;
typedef hls::stream<ap_axiu<(HSC_MAX_BITS*HSC_NR_COMPONENTS),1,1,1> >       HSC_AXI_STREAM_OUT;

typedef hls::stream<YUV_MULTI_PIXEL>                      			     HSC_STREAM_MULTIPIX;

#if HSC_SAMPLES_PER_CLOCK==8
#define HSC_PHASE_CTRL_INDEX_BITS		4
#endif

#if HSC_SAMPLES_PER_CLOCK==4
#define HSC_PHASE_CTRL_INDEX_BITS		3
#endif

#if HSC_SAMPLES_PER_CLOCK==2
#define HSC_PHASE_CTRL_INDEX_BITS		2
#endif

#if HSC_SAMPLES_PER_CLOCK==1
#define HSC_PHASE_CTRL_INDEX_BITS		2
#endif



#define HSC_PHASE_CTRL_EN_BITS		1
#define HSC_PHASE_CTRL_PHASE_BITS	HSC_PHASE_SHIFT

#define HSC_PHASE_CTRL_BITS											(HSC_PHASE_CTRL_PHASE_BITS+HSC_PHASE_CTRL_EN_BITS+HSC_PHASE_CTRL_INDEX_BITS)

#define HSC_PHASE_CTRL_PHASE_LSB									0
#define HSC_PHASE_CTRL_PHASE_MSB									(HSC_PHASE_CTRL_PHASE_LSB+HSC_PHASE_CTRL_PHASE_BITS-1)

#define HSC_PHASE_CTRL_INDEX_LSB									(HSC_PHASE_CTRL_PHASE_MSB+1)
#define HSC_PHASE_CTRL_INDEX_MSB									(HSC_PHASE_CTRL_INDEX_LSB+HSC_PHASE_CTRL_INDEX_BITS-1)

#define HSC_PHASE_CTRL_ENABLE_LSB									(HSC_PHASE_CTRL_BITS-1)
typedef ap_uint<(HSC_PHASE_CTRL_BITS*HSC_SAMPLES_PER_CLOCK)>		HSC_PHASE_CTRL;

typedef struct
{
	U16 Height;
	U16 WidthIn;     	// Input H Resolution
	U16 WidthOut;    	// Output H resolution
	U8  ColorMode;   	// RGB, 444, 420, 444
	U32 PixelRate;   	// in/out * 65536
	U8  ColorModeOut;	// RGB, 444, 420, 444
	I16 hfltCoeff[HSC_PHASES][HSC_TAPS];
	HSC_PHASE_CTRL phasesH[HSC_MAX_WIDTH/HSC_SAMPLES_PER_CLOCK];
}HSC_HW_STRUCT_REG;


// top level function for HW synthesis
extern void v_hscaler  (HSC_AXI_STREAM_IN& s_axis_video,
           	 	U16 &Height,
		        U16 &WidthIn,
	         	U16 &WidthOut,
		        U8 &ColorMode,
				U32 &PixelRate,
		        U8 &ColorModeOut,
				I16 hfltCoeff[HSC_PHASES][HSC_TAPS],
				HSC_PHASE_CTRL phasesH[HSC_MAX_WIDTH/HSC_SAMPLES_PER_CLOCK],
                HSC_AXI_STREAM_OUT& m_axis_video
                );
#endif
