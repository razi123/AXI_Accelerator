#include"xparameters.h"
#include "xil_io.h"
#include "xil_types.h"

#define AB_address XPAR_MULTIPLY_2BIT_0_S00_AXI_BASEADDR
#define C_address XPAR_MULTIPLY_2BIT_0_S00_AXI_BASEADDR + 4
int main()

{
	u32 prod_AB ;
	Xil_Out32(AB_address, 0x0000000A);
	prod_AB = Xil_In32(C_address);


	xil_printf("Product of A and B is = %d\r\n", prod_AB);


return 0;
}
