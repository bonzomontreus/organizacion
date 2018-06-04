.globl app
app:
	// X0 contiene la direccion base del framebuffer
	mov x3,x0 // copia del valor original del fb
	//---------------- CODE HERE ------------------------------------

	mov w10, 0xffff    // 0xF800 = RED
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

	//---------------------------------------------------------------

	mov x16,1
	lsl x16,x16,23 		// delay de mas o menos 5 segundos
delay:
	sub x16,x16,1
	cbnz x16, delay

	mov x0,x3
	mov x4,65536
	add x0,x0,x4
	sub x0,x0,944
	//add x0,x0,x4
	//add x0,x0,x4
	//add x0,x0,x4
	mov w10, 0x1f
	mov x11,40
	mov x12,40


	// x10 va a ser el punto de inicio
	// x11 va a ser el ancho --- eje X
	// x12 va a ser el alto  --- eje Y

cuadrado:

	mov x3, x0     // inicio del cuadrado
	mov x1,x11      // inicio de X
	mov x2,x12      // inicio de Y

loop_ini:			// ciclo inicia X
	//add x0 , x0, 1024
	//sub x0, x0, 80
	add x0,x0,944
    mov x1 , x11

loop_pinta:
    sturh w10,[x0]  // Pinta el pixel
    add x0,x0,2	   // Next pixel
	sub x1,x1,1	   // decrement X counter
	cbnz x1,loop_pinta	   // If not end row jump
	sub x2,x2,1	   // Decrement Y counter
	cbnz x2,loop_ini	   // if not last row, jump

        // Infinite Loop
InfLoop:
	b InfLoop
