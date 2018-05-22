.globl app
app:
	// X0 contiene la direccion base del framebuffer

	//---------------- CODE HERE ------------------------------------

	mov w10, 0xF800    // 0xF800 = RED
	mov w11, 0x07E0 // 0x07E0 == GREEN
	mov w12, 0x001F // 0x001F == BLUE


	mov x2,512			// Y Size
loop1:
	mov x1, 512			// X Size
	mov w14, w10			// inicializa con rojo
	mov x4, 31 			// var temporal, condicional de salto

loop0_60:
	//verde 0 a 64
	// color a armar verde + rojo = 0xffe0

	sturh w14, [x0]
	add x0, x0, 2			 	// next pixel to right
	sub x1, x1, 1	   		   // decrement X counter
	cbz x1, decrementary 	// si me quede sin pantalla, restar 1 a y y volver
							// a setear x a 512

	add w14, w14, 0x40		// incremento en 2 numeros el verde
	sub x4, x4, 1
	cbnz x4, loop0_60	   // If not end row jump keep painting

	mov x4, 31
	add w14, w10, w11  //suma rojo con verde

loop60_120:
	// rojo 32 a 0
	// color a armar verde = 0x07e0

	sturh w14, [x0]
	add x0, x0, 2				// next pixel to right
	sub x1, x1, 1	   		   // decrement X counter
	cbz x1, decrementary
	sub w14, w14, 0x800		// resto 1 numeros el rojo
	sub x4, x4, 1
	cbnz x4, loop60_120	   // If not end row jump keep painting
	mov x4, 31
	mov w14, w11  // color verde

loop120_180:
	// azul 0 a 32
	// color a armar verde + azul = 0x07ff

	sturh w14, [x0]
	add x0, x0, 2				// next pixel to right
	sub x1, x1, 1	   		   // decrement X counter
	cbz x1, decrementary
	add w14, w14, 0x1
	sub x4, x4, 1
	cbnz x4, loop120_180	   // If not end row jump keep painting

	mov x4, 31
	add w14, w12, w11 // suma azul con verde

loop180_240:
	// verde 64 a 0
	// color a armar azul = 0x001f

	sturh w14, [x0]
	add x0, x0, 2				// next pixel to right
	sub x1, x1, 1	   		   // decrement X counter
	cbz x1, decrementary
	sub w14, w14, 0x40
	sub x4, x4, 1
	cbnz x4, loop180_240	   // If not end row jump keep painting
	mov x4, 31
	mov w14, w12 // color azul

loop240_300:
	// rojo 0 a 32
	// color a armar azul + rojo = 0xf81f

	sturh w14,[x0]
	add x0, x0, 2				// next pixel to right
	sub x1, x1, 1	   		   // decrement X counter
	cbz x1, decrementary
	add w14, w14, 0x800
	sub x4, x4, 1
	cbnz x4, loop240_300	   // If not end row jump keep painting

	mov x4,31
	add w14,w10,w12 // suma rojo con azul

loop300_360:
	// azul 32 a 0
	// color a armar rojo = 0xf800

	sturh w14,[x0]
	add x0,x0,2				// next pixel to right
	sub x1,x1,1	   		   // decrement X counter
	cbz x1,decrementary
	sub w14,w14,0x1
	sub x4,x4,1
	cbnz x4,loop300_360	   // If not end row jump keep painting

decrementary:
	sub x2,x2,1	   			// Decrement Y counter
	//mov w14,w10
	cbnz x2,loop1	   // if not last row, jump

	//---------------------------------------------------------------

        // Infinite Loop
InfLoop:
	b InfLoop
