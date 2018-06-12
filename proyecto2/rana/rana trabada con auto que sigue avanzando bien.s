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

pasto:
	//----------------------------------------------------------------------------
	//				PASTO 1
	// x0 va a ser el punto de inicio
	// x11 va a ser el ancho --- eje X
	// x12 va a ser el alto  --- eje Y

		mov x0,x4
		mov x11, 512
		mov x12, 60
		mov w13, 0x25C3
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
		mov w13, 0x6B2C

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
		mov w13, 0x25C3

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
		mov w13, 0x6B2C

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
		mov w13, 0x25C3

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

		//----------------------------------------------------------------------------
		//				RAYA 1 (LINEA 2)
		// x0 va a ser el punto de inicio
		// x11 va a ser el ancho --- eje X
		// x12 va a ser el alto  --- eje Y

		mov x0,x4
		mov x5,1024
		mov x6,365
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
	//				RAYA 2 (LINEA 2)
	// x0 va a ser el punto de inicio
	// x11 va a ser el ancho --- eje X
	// x12 va a ser el alto  --- eje Y

		mov x0,x4
		mov x5,1024
		mov x6,365
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
	//				RAYA 3 (LINEA 2)
	// x0 va a ser el punto de inicio
	// x11 va a ser el ancho --- eje X
	// x12 va a ser el alto  --- eje Y

		mov x0,x4
		mov x5,1024
		mov x6,365
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
	//				RAYA 4 (LINEA 2)
	// x0 va a ser el punto de inicio
	// x11 va a ser el ancho --- eje X
	// x12 va a ser el alto  --- eje Y

		mov x0,x4
		mov x5,1024
		mov x6,365
		mul x5,x5,x6	  // 1024 * 139
		add x0,x0,x5
		add x0,x0, 762	// (254 * 3
		mov x11, 86		// X
		mov x12, 8  	// Y
		mov w13, 0xffe0
		sub x0 , x0, 1024
	  	add x0, x0, 80

		bl cuadrado
	//----------------------------------------------------------------------------
// 		RANA
//      PATAS RANA
		mov x8,x4
		mov x5,1024
		mov x6,470
		sub x6,x6,3
		mul x5,x5,x6
		add x8,x8,x5
		add x8,x8,96
		mov x0,x8

		mov x17,0
rana:
		mov w13,0x0 // blanco
		sturh w13,[x0]
		add x0,x0,14
		sturh w13,[x0]
		add x0,x0,26
		sturh w13,[x0]
		add x0,x0,14
		sturh w13,[x0]
		add x0,x0,1024
		sub x0,x0,52
		sturh w13,[x0]
		add x0,x0,10
		sturh w13,[x0]
		add x0,x0,30
		sturh w13,[x0]
		add x0,x0,10
		sturh w13,[x0]
	//-------------------------------------------------------------------------

		add x0,x0,1024
		sub x0,x0,48
		sturh w13,[x0]
		add x0,x0,6
		sturh w13,[x0]
		add x0,x0,34
		sturh w13,[x0]
		add x0,x0,6
		sturh w13,[x0]
		add x0,x0,1024
		sub x0,x0,44
		sturh w13,[x0]
		add x0,x0,2
		sturh w13,[x0]
		add x0,x0,16
		sturh w13,[x0]
		add x0,x0,2
		sturh w13,[x0]
		add x0,x0,2
		sturh w13,[x0]
		add x0,x0,2
		sturh w13,[x0]
		add x0,x0,16
		sturh w13,[x0]
		add x0,x0,2
		sturh w13,[x0]
	// ------------------------------------------------------------------------

		mov x0,x8
		mov x5,1024
		mov x6,4
		mul x5,x5,x6
		add x0,x0,x5
		mov x11, 8
		mov x12, 1
		mov w13, 0x0 // blanco
		sub x0 , x0, 1024
		add x0, x0, 16

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,4
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,22
		mov x11, 6
		mov x12, 3
		mov w13, 0x0 // blanco
		sub x0 , x0, 1024
		add x0,x0,12

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,4
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,40
		mov x11,8
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,16

		bl cuadrado
	//-------------------------------------------------------------------------

		mov x0,x8
		mov x5,1024
		mov x6,5
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,6
		mov x11,2
		mov x12,3
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,4

		bl cuadrado
	//     OJO IZQUIERDO
		mov x0,x8
		mov x5,1024
		mov x6,5
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,18
		mov x11,2
		mov x12,2
		mov w13,0xf800
		sub x0,x0,1024
		add x0,x0,4

		bl cuadrado
	//     OJO DERECHO
		mov x0,x8
		mov x5,1024
		mov x6,5
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,34
		mov x11,2
		mov x12,2
		mov w13,0x0f800
		sub x0,x0,1024
		add x0,x0,4

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,5
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,46
		mov x11,2
		mov x12,3
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,4

		bl cuadrado
	//-------------------------------------------------------------------------

		mov x0,x8
		mov x5,1024
		mov x6,8
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,6
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,7
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,20
		mov x11,8
		mov x12,2
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,16

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,8
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,44
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado
	//-------------------------------------------------------------------------
	//     PRIMERA LINEA LARGA
		mov x0,x8
		mov x5,1024
		mov x6,9
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,8
		mov x11,20
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,40

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,10
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,10
		mov x11,18
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,36

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,11
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,18
		mov x11,10
		mov x12,4
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,20

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,15
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,20
		mov x11,8
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,16

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,16
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,22
		mov x11,6
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,12

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,17
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,20
		mov x11,8
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,16

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,18
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,18
		mov x11,10
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,20

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,19
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,16
		mov x11,4
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,8

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,19
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,32
		mov x11,4
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,8

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,20
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,14
		mov x11,4
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,8

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,20
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,34
		mov x11,4
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,8

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,21
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,12
		mov x11,4
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,8

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,21
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,36
		mov x11,4
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,8

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,22
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,10
		mov x11,4
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,8

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,22
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,38
		mov x11,4
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,8

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,23
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,12
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,23
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,38
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,24
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,14
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,24
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,36
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,25
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,16
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,25
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,34
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,26
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,18
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,26
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,32
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,27
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,20
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,27
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,30
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,28
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,18
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,28
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,32
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,29
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,16
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,29
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,34
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,30
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,14
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,30
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,36
		mov x11,3
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,6

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,31
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,6
		mov x11,6
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,12

		bl cuadrado

		mov x0,x8
		mov x5,1024
		mov x6,31
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,38
		mov x11,6
		mov x12,1
		mov w13,0x0 // blanco
		sub x0,x0,1024
		add x0,x0,12

		bl cuadrado
		//-------------------------------------------------------------------------

		mov x0,x8
		mov x5,1024
		mov x6,27
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,8
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,27
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,46
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,28
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,10
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,28
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,44
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,29
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,12
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,29
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,42
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,32
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,14
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,32
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,40
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,33
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,12
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,33
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,42
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,34
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,10
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,34
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,44
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,35
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,8
		sturh w13,[x0]

		mov x0,x8
		mov x5,1024
		mov x6,35
		mul x5,x5,x6
		add x0,x0,x5
		add x0,x0,46
		sturh w13,[x0]

		add x17,x17,1
		cmp x17,1
		b.eq pinta_linea_verde
		cmp x17,2
		b.eq auto
		cmp x17,3
		b.eq borra_ultima_rana
		cmp x17,4
		b.eq pinta_quinta_rana
		cmp x17,5
		b.eq pinta_sexta_rana
		cmp x17,6
		b.eq pinta_septima_rana
		cmp x17,7
		b.eq pinta_octava_rana
		cmp x17,8
		b.eq pinta_novena_rana
		cmp x17,9
		b.eq pinta_decima_rana
		b.gt InfLoop
		//cmp x17,2
		//b pinta_linea_gris

//----------------------------------------------------------------------------
// 		FIN DE RANA
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
//				PASTO 3
// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

pinta_linea_verde: //			BORRA LA PRIMERA RANA Y PINTA LA SEGUNDA
	mov x0,x4
	mov x5,1024
	mov x6,452
	mul x5,x5,x6
	add x0,x0,x5
	mov x11, 512
	mov x12, 60
	mov w13, 0x25C3

	mov x16,6553600

	delay:
	sub x16,x16,1
	cbnz x16, delay
	bl franja

	mov x8,x4
	mov x5,412
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	mov x0,x8

	b rana

auto:
//----------------------------------------------------------------------------
//		PRIMER CUADRADO  (linea 357)

		mov x0,x4
		mov x5,310
		mov x6,1024
		mul x5,x5,x6
		add x0,x0,x5
		mov x11,1
		mov w13,0xf800
		sub x0,x0,1024
		add x0,x0,2

repetir:
		mov x12,30

		bl cuadrado

		mov x16,65536
delay12:
	sub x16,x16,1
	cbnz x16, delay12

		add x0,x0,2
		add x11,x11,1
		mov x5, 1024
		mul x5,x12,x5
		sub x0,x0,x5

		cmp x11,50
		b.ne repetir

//---------------------------------------------------------------------------
//		TRANSICIÓN DEL MEDIO

	mov x0,x4
	mov x5,310
	mov x6,1024
	mul x5,x5,x6
	add x0,x0,x5
	add x0,x0,2
	mov x11,50		// X
	mov w13,0xf800
	sub x0,x0,1024
	add x0,x0,x11
	add x0,x0,x11

repetir1:
	sub x0,x0,2
	mov x12,30		// Y
	mov w13,0x6B2C
	mov x7,x0
	// x0 apunta al primer pixel arriba a la ziquierda del cuadrado
	bl cuadrado
	mov x0,x7
	//add x0,x0,2
	mov w13,0xf800
	add x0, x0, 2
	bl cuadrado

	mov x16,65536
delay11:
	sub x16,x16,1
	cbnz x16, delay11

	mov x5, 1024
	mul x5,x12,x5
	sub x0,x0,x5

	cmp x0,x8
	add x0,x0,2		//
	b.ne repetir1

//---------------------------------------------------------------------------
//		AUTO DESAPARECE

	mov x0,x4
	mov x5,310
	mov x6,1024
	mul x5,x5,x6
	add x0,x0,x5
	add x0,x0,924
	//add x0,x0,2
	mov x11,1		// X
	mov w13,0x6B2C
	sub x0,x0,1024
	add x0,x0,x11
	add x0,x0,x11

repetir2:
	//sub x0,x0,2
	mov x12,30		// Y
	mov w13,0x6B2C
	mov x7,x0
	//add x11,x11,1
	// x0 apunta al primer pixel arriba a la ziquierda del cuadrado
	bl cuadrado

	mov x16,65536
delay10:
	sub x16,x16,1
	cbnz x16, delay10

	mov x5, 1024
	mul x5,x12,x5
	sub x0,x0,x5

	cmp x0,x8
	add x0,x0,2		//
	b.ne repetir2

// ------------------------------------------------------------------------


pinta_cuadrado_gris: //		BORRA LA SEGUNDA RANA Y PINTA LA TERCERA
	//mov x0,x8 	//	Direccion de la rana 2

	mov x8,x4
	mov x5,412
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	mov x0,x8

	mov x11, 30
	mov x12, 36
	mov w13, 0x6B2C
	sub x0 , x0, 1024
	add x0, x0, 60

	mov x16,655360

	delay2:
	sub x16,x16,1
	cbnz x16, delay2
	bl cuadrado

	mov x8,x4
	mov x5,357
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	mov x0,x8

	b rana

borra_ultima_rana:	//		BORRA LA TERCERA RANA Y PINTA LA CUARTA
	mov x0,x8 	//		Direccion de la rana 3

	mov x11, 30
	mov x12, 36
	mov w13, 0x6B2C
	sub x0 , x0, 1024
	add x0, x0, 60

	mov x16,655360

	delay3:
	sub x16,x16,1
	cbnz x16, delay3
	bl cuadrado

	mov x8,x4
	mov x5,302
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	mov x0,x8

	b rana

pinta_quinta_rana: //		BORRA LA CUARTA RANA Y PINTA LA QUINTA (PASTO)
	mov x0,x8

	mov x11, 30
	mov x12, 36
	mov w13, 0x6B2C
	sub x0 , x0, 1024
	add x0, x0, 60

	mov x16,655360

	delay4:
	sub x16,x16,1
	cbnz x16, delay4
	bl cuadrado

	mov x8,x4
	mov x5,240
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	mov x0,x8

	b rana

pinta_sexta_rana: //		BORRA LA QUINTA RANA Y PINTA LA SEXTA
	mov x0,x8

	mov x11, 30
	mov x12, 36
	mov w13, 0x25C3
	sub x0 , x0, 1024
	add x0, x0, 60

	mov x16,655360

	delay5:
	sub x16,x16,1
	cbnz x16, delay5
	bl cuadrado

	mov x8,x4
	mov x5,240
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	add x8,x8,70
	mov x0,x8

	b rana

pinta_septima_rana:	//		PINTA LA SEPTIMA RANA Y BORRA LA SEXTA
	mov x0,x8

	mov x11, 30
	mov x12, 36
	mov w13, 0x25C3
	sub x0 , x0, 1024
	add x0, x0, 60

	mov x16,655360

	delay6:
	sub x16,x16,1
	cbnz x16, delay6
	bl cuadrado

	mov x8,x4
	mov x5,240
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	add x8,x8,120
	mov x0,x8

	b rana

pinta_octava_rana:	//		PINTA LA OCTAVA RANA Y BORRA LA SEPTIMA
	mov x0,x8

	mov x11, 30
	mov x12, 36
	mov w13, 0x25C3
	sub x0 , x0, 1024
	add x0, x0, 60

	mov x16,655360

	delay7:
	sub x16,x16,1
	cbnz x16, delay7
	bl cuadrado

	mov x8,x4
	mov x5,240
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	add x8,x8,180
	mov x0,x8

	b rana

pinta_novena_rana:	//		PINTA LA NOVENA RANA Y BORRA LA OCTAVA
	mov x0,x8

	mov x11, 30
	mov x12, 36
	mov w13, 0x25C3
	sub x0 , x0, 1024
	add x0, x0, 60

	mov x16,655360

	delay8:
	sub x16,x16,1
	cbnz x16, delay8
	bl cuadrado

	mov x8,x4
	mov x5,240
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	add x8,x8,240
	mov x0,x8

	b rana

pinta_decima_rana:	//		PINTA LA ULTIMA RANA
	mov x0,x8

	mov x11, 30
	mov x12, 36
	mov w13, 0x25C3
	sub x0 , x0, 1024
	add x0, x0, 60

	mov x16,655360

	delay9:
	sub x16,x16,1
	cbnz x16, delay9
	bl cuadrado

	mov x8,x4
	mov x5,170
	mov x6,1024
	mul x5,x5,x6
	add x8,x8,x5
	add x8,x8,96
	add x8,x8,240
	mov x0,x8

	b rana



//---------------------------------------------------------------------------
//			FIN DE FUNCION
//---------------------------------------------------------------------------

//----------------------------------------------------------------------------
// 				FUNCION FRANJA
//---------------------------------------------------------------------------
franja:

    mov x1,x11      // inicio de X
    mov x2,x12      // inicio de Y
		mov w10,w13		// inicio del color

loop_ini:			// ciclo inicia X
    mov x1 , x11

loop_pinta:
    sturh w10,[x0]  // Pinta el pixel
    add x0,x0,2	   // Next pixel
    sub x1,x1,1	   // dec0rement X counter
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
