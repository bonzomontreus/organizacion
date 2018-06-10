.globl app
app:
	// X0 contiene la direccion base del framebuffer
	mov x4,x0 // copia del valor original del fb
	mov w8,0xf800

	//---------------- CODE HERE ------------------------------------
	// 			FUNCION BASE

	mov w10,0xffff    // 0xffff = WHITE
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
//       CODIGO ACA

    mov x0,x4
    mov x11,1
    mov w13,0x1f
    sub x0,x0,1024
    add x0,x0,2
repetir:
    mov x12,30

    bl cuadrado

    mov x16,655360
delay:
	sub x16,x16,1
	cbnz x16, delay

    add x0,x0,2
    add x11,x11,1
    mov x5, 1024
    mul x5,x12,x5
    sub x0,x0,x5

    cmp x11,50
    b.eq InfLoop
    
    b repetir






// ------------------------------------------------------------------------

    b InfLoop

// ------------------------------------------------------------------------
//				FUNCION CUADRADO

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
	sub x0, x0, x11
    sub x0, x0, x11
    mov x1 , x11

loop_1_cuad:
    sturh w10,[x0]  // Pinta el pixel
    add x0,x0,2	   // Next pixel
    sub x1,x1,1	   // decrement X counter
    cbnz x1,loop_1_cuad	   // If not end row jump
    sub x2,x2,1	   // Decrement Y counter
    cbnz x2,loop_0_cuad	   // if not last row, jump
	ret




// ------------------------------------------------------------------------
// Infinite Loop
	InfLoop:
		b InfLoop
