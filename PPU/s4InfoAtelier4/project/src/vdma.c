#include "vdma.h"

void configureVdma()
{
	u32 width, height;

	width = 640;
	height = 360;

	/* Start of VDMA Configuration */
    /* Configure the Write interface (S2MM)*/
    // S2MM Control Register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
    //S2MM Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, FRAME_BUFFER_1);
    //S2MM Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA8, width*3);
    // S2MM HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA4, width*3);
    // S2MM VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA0, height);

    /* Configure the Read interface (MM2S)*/
    // MM2S Control Register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8B);
    // MM2S Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C, FRAME_BUFFER_1);
    // MM2S Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x58, width*3);
    // MM2S HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x54, width*3);
    // MM2S VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x50, height);


}
