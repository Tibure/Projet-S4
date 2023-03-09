#include "scaler.h"
#include "vdma.h"
#include "xil_printf.h"
#include "myColorRegister.h"
#include "sleep.h"

int main()
{
	configureScaler();
    configureVdma();

    int colorA = 0;
    int colorB = 0xFF;
    MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 4, colorB);

    while(1)
    {
    MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, colorA );
    colorA = colorA + 1024;
    sleep(1);
    }

    return 0;
}
