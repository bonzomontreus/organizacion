.globl app
app:
	// X0 contiene la direccion base del framebuffer
	mov x4,x0 // copia del valor original del fb
	mov w8,0xf800

	//---------------- CODE HERE ------------------------------------
	// 			FUNCION BASE

	mov w10, 0xffff    // 0xffff = WHITE
	mov x2,512         // Y Size
loop1:
	mov x1,512         // X Size
loop0:
	sturh w10,[x0]	   // Set color of pixel N
	add x0,x0,2	   // Next pixel
	sub x1,x1,1	   // decrement X counter
	cbnz x1,loop0	   // If not end row jump
	sub x2,x2,1	   // Decrement Y counter
	cbnz x2,loop1	   // if not last row, jump


//----------------------------------------------------------------------------
//				FUNCION CUADRADO
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x11, 512
	mov x12, 60
	mov w13, 0x001f

cuadrado:

    //mov x0, x0     // inicio del cuadrado
    mov x1,x11      // inicio de X
    mov x2,x12      // inicio de Y
	mov w10,w13		// inicio del color
	//sub x0,x0,1024
	//add x0,x0,120

loop_ini:			// ciclo inicia X
    //add x0 , x0, 1024
    //sub x0, x0, 120
    mov x1 , x11

loop_pinta:
    sturh w10,[x0]  // Pinta el pixel
    add x0,x0,2	   // Next pixel
    sub x1,x1,1	   // decrement X counter
    cbnz x1,loop_pinta	   // If not end row jump
    sub x2,x2,1	   // Decrement Y counter
    cbnz x2,loop_ini	   // if not last row, jump

	// ------------------------------------------------------------------------
	        // Infinite Loop
	InfLoop:
		b InfLoop
