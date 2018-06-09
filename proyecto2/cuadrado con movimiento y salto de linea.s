.globl app
app:
	// X0 contiene la direccion base del framebuffer
	mov x3,x0 // copia del valor original del fb
	mov x9,x0
	mov x7,x0
	mov w8,0xf800

	//---------------- CODE HERE ------------------------------------

	mov w10, 0x07E0    // 0xffff = WHITE
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
	add x0,x0,80
	sub x7,x7,1024
	add x7,x7,32
	
	mov x16,65536
delay:
	sub x16,x16,1
	cbnz x16, delay

	mov x0,x3
	mov x7,x0
	sub x0,x0,1024
	add x0,x0,80
	sub x7,x7,1024
	add x7,x7,32

	//mov x4,262144 // para mover 128 lineas mas abajo
	//add x0,x0,x4
	//add x0,x0,552 // para movernos al medio
	mov w13, 0x1f
	mov x11,40		// X cuadrado azul
	mov x12,40		// Y cuadrado azul
	mov x1,32		// X cuadrado rojo
	mov x2,40		// Y cuadrado rojo
	sub x7,x7,80 // sub 900 + sub 200


loop_ini:			// ciclo inicia X
	add x0,x0,1024
	sub x0,x0,80
    mov x11,40

loop_pinta:
    sturh w13,[x0]     // Pinta el pixel
    add x0,x0,2	   // Next pixel
	sub x11,x11,1	   // decrement X counter
	cbnz x11,loop_pinta	   // If not end row jump
	sub x12,x12,1	   // Decrement Y counter
	cbnz x12,loop_ini	   // if not last row, jump

loop_ini_blanco:			// ciclo inicia X
	add x7,x7,1024
	sub x7,x7,32
    mov x1,16

loop_pinta_blanco:
    sturh w8,[x7]     // Pinta el pixel
    add x7,x7,2	   // Next pixel
	sub x1,x1,1	   // decrement X counter
	cbnz x1,loop_pinta_blanco	   // If not end row jump
	sub x2,x2,1	   // Decrement Y counter
	cbnz x2,loop_ini_blanco	   // if not last row, jump


	add x9, x9, 6
	mov x3, x9


	mov x16,65536
	cbz x12, delay

// ------------------------------------------------------------------------
        // Infinite Loop
InfLoop:
	b InfLoop
