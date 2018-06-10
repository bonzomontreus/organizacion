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
	mov x14,32
	mov x0,x4
	sub x0,x0,2
	mov x11,0
vuelta:
	add x0,x0,2
	add x11,x11,1
	mov x12, 30
	mov w13, 0x7e0
	sub x14,x14,1

	bl cuadrado

	mov x16,65536
delay:
	sub x16,x16,1
	cbnz x16, delay

	cbz x14 b InfLoop
	b vuelta





//---------------------------------------------------------------------------
//			FIN DE FUNCION
	b InfLoop


//----------------------------------------------------------------------------
//


/*			FUNCION FRANJA
franja:

    mov x1,x11      // inicio de X
    mov x2,x12      // inicio de Y
	mov w10,w13		// inicio del color

loop_ini:			// ciclo inicia X
    mov x1 , x11

loop_pinta:
    sturh w10,[x0]  // Pinta el pixel
    add x0,x0,2	   // Next pixel
    sub x1,x1,1	   // decrement X counter
    cbnz x1,loop_pinta	   // If not end row jump
    sub x2,x2,1	   // Decrement Y counter
    cbnz x2,loop_ini	   // if not last row, jump
	ret
*/

// ------------------------------------------------------------------------
//				FUNCION CUADRADO RAYAS

// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

cuadrado:

    mov x0, x0     // inicio del cuadrado
    mov x1,x11      // inicio de X
    mov x2,x12      // inicio de Y
	mov w10,w13

loop_0_cuad:			// ciclo inicia X
    add x0 , x0, 1024
    sub x0, x0, 172
    mov x1 , x11

loop_1_cuad:
    sturh w10,[x0]  // Pinta el pixel
    add x0,x0,2	   // Next pixel
    sub x1,x1,1	   // decrement X counter
    cbnz x1,loop_1_cuad	   // If not end row jump
    sub x2,x2,1	   // Decrement Y counter
    cbnz x2,loop_0_cuad	   // if not last row, jump
	ret

// --------------------------------------------------------------------------
//				FUNCION CUADRADO TRANSITIVO PRINCIPIO

// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

auto:

    mov x0, x0     // inicio del cuadrado
    mov x1,x11      // inicio de X
    mov x2,x12      // inicio de Y
	mov w10,w13

loop_0_auto:			// ciclo inicia X
    add x0 , x0, 1024
    sub x0, x0, 172
    mov x1 , x11

loop_1_auto:
    sturh w10,[x0]  // Pinta el pixel
    add x0,x0,2	   // Next pixel
    sub x1,x1,1	   // decrement X counter
    cbnz x1,loop_1_auto	   // If not end row jump
    sub x2,x2,1	   // Decrement Y counter
    cbnz x2,loop_0_auto	   // if not last row, jump
	ret

// --------------------------------------------------------------------------

// Infinite Loop
	InfLoop:
		b InfLoop
