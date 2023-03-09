#include "scaler.h"
#include "vdma.h"
#include "xil_printf.h"
#include "myColorRegister.h"
#include "sleep.h"

int main()
{
	configureScaler();
    configureVdma();

    int colorA = 0xFF;
    int colorB = 0xFF00;
    int colorC = 0xFF0000;
    MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 4, colorC);


    while(1)
    {
    MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, colorA );
    colorA = colorA + 0;
    sleep(1);
    }

    return 0;
}
