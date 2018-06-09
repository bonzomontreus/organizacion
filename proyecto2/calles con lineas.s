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
//				PASTO 1
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x11, 512
	mov x12, 60
	mov w13, 0x7e0
	bl franja


//----------------------------------------------------------------------------
//				CALLE 1
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x5,1024
	mov x6,60
	mul x5,x5,x6
	add x0,x0,x5
	mov x11, 512
	mov x12, 166
	mov w13, 0x2105

	bl franja

//----------------------------------------------------------------------------
//				PASTO 2
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x5,1024
	mov x6,226
	mul x5,x5,x6
	add x0,x0,x5
	mov x11, 512
	mov x12, 60
	mov w13, 0x7e0

	bl franja

//----------------------------------------------------------------------------
//				CALLE 2
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x5,1024
	mov x6,286
	mul x5,x5,x6
	add x0,x0,x5
	mov x11, 512
	mov x12, 166
	mov w13, 0x2105

	bl franja

//----------------------------------------------------------------------------
//				PASTO 3
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x5,1024
	mov x6,452
	mul x5,x5,x6
	add x0,x0,x5
	mov x11, 512
	mov x12, 60
	mov w13, 0x7e0

	bl franja

//----------------------------------------------------------------------------
//				RAYA 1
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x5,1024
	mov x6,139
	mul x5,x5,x6
	add x0,x0,x5
	add x0,x0,2
	mov x11, 86
	mov x12, 8
	mov w13, 0xffe0
	sub x0 , x0, 1024
    add x0, x0, 80

	bl cuadrado

//----------------------------------------------------------------------------
//				RAYA 2
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x5,1024
	mov x6,139
	mul x5,x5,x6	  // 1024 * 139
	add x0,x0,x5
	add x0,x0,254	// (86 + 1 + 20 ) * 2
	mov x11, 86		// X
	mov x12, 8  	// Y
	mov w13, 0xffe0
	sub x0 , x0, 1024
    add x0, x0, 80

	bl cuadrado

//----------------------------------------------------------------------------
//				RAYA 3
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x5,1024
	mov x6,139
	mul x5,x5,x6	  // 1024 * 139
	add x0,x0,x5
	add x0,x0,508	// 254 * 2 
	mov x11, 86		// X
	mov x12, 8  	// Y
	mov w13, 0xffe0
	sub x0 , x0, 1024
    add x0, x0, 80

	bl cuadrado
//----------------------------------------------------------------------------
//				RAYA 4
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

	mov x0,x4
	mov x5,1024
	mov x6,139
	mul x5,x5,x6	  // 1024 * 139
	add x0,x0,x5
	add x0,x0, 762	// (254 * 3
	mov x11, 86		// X
	mov x12, 8  	// Y
	mov w13, 0xffe0
	sub x0 , x0, 1024
    add x0, x0, 80

	bl cuadrado



//---------------------------------------------------------------------------
//			FIN DE FUNCION
	b InfLoop


//----------------------------------------------------------------------------
// 				FUNCION FRANJA
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

// ------------------------------------------------------------------------
// Infinite Loop
	InfLoop:
		b InfLoop
