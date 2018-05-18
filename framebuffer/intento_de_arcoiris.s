.globl app
app:
	// X0 contiene la direccion base del framebuffer

	//---------------- CODE HERE ------------------------------------

	mov w10, 0xF800    // 0xF800 = RED
	mov w11, 0x001F // 0x001F == BLUE
	mov w12, 0x07E0 // 0x07E0 == GREEN
	mov x4, 1 // var temporal, condicional de salto

	// Numero son 510-425-340-255-170-85

	mov x2,512         // Y Size
	loop1:
	mov x1,512         // X Size

loop0_60:
	//verde 0 a 64
	sturh w10,[x0]
	add x0,x0,2			   // next pixel to right
	sub x1,x1,1	   		   // decrement X counter
	add w10, w10, 0x0040  // incremento en 2 numeros el verde
	sub x4,w10,0xffe0
	cbnz x4,loop0_60	   // If not end row jump keep painting
	cbz x4, loop60_120

loop60_120:
	// rojo 32 a 0
	sturh w10,[x0]
	add x0,x0,2				// next pixel to right
	sub x1,x1,1	   		   // decrement X counter
	sub w10,w10,0x0800		// resto 1 numeros el rojo
	sub x4,w10,0x07e0
	cbnz x4,loop60_120	   // If not end row jump keep painting
	cbz x4, loop120_180

loop120_180:
	// azul 0 a 32
	sturh w10,[x0]
	add x0,x0,2				// next pixel to right
	sub x1,x1,0x1	   		   // decrement X counter
	sub x4,w10,0x7ff
	cbnz x4,loop120_180	   // If not end row jump keep painting
	cbz x4, loop180_240

loop180_240:
	// verde 32 a 0
	sturh w10,[x0]
	add x0,x0,2				// next pixel to right
	sub x1,x1,1	   		   // decrement X counter
	sub w10,w10,0x0040
	sub x4,w10,0x001f
	cbnz x4,loop180_240	   // If not end row jump keep painting
	cbz x4, loop240_300

loop240_300:
	// rojo 0 a 32
	sturh w10,[x0]
	add x0,x0,2				// next pixel to right
	sub x1,x1,1	   		   // decrement X counter
	add w10,w10,0x8000
	sub x4,w10,0xf81f
	cbnz x4,loop240_300	   // If not end row jump keep painting
	cbz x4, loop300_360

loop300_360:
	// azul 32 a 0
	sturh w10,[x0]
	add x0,x0,2				// next pixel to right
	sub x1,x1,1	   		   // decrement X counter
	sub w10,w10,0x1
	sub x4,w10,0x8000
	cbnz x4,loop300_360	   // If not end row jump keep painting
	sub x2,x2,1	   			// Decrement Y counter
	cbnz x2,loop0_60	   // if not last row, jump

	//---------------------------------------------------------------

        // Infinite Loop
InfLoop:
	b InfLoop
