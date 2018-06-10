
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

// ------------------------------------------------------------------------
//      PATAS RANA

	mov x0,x4
	mov w13,0x7e0
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

mov x0,x4
mov x5,1024
mov x6,4
mul x5,x5,x6
add x0,x0,x5
mov x11, 8
mov x12, 1
mov w13, 0x7e0
sub x0 , x0, 1024
add x0, x0, 16

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,4
mul x5,x5,x6
add x0,x0,x5
add x0,x0,22
mov x11, 6
mov x12, 3
mov w13, 0x7e0
sub x0 , x0, 1024
add x0,x0,12

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,4
mul x5,x5,x6
add x0,x0,x5
add x0,x0,40
mov x11,8
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,16

bl cuadrado
//-------------------------------------------------------------------------

mov x0,x4
mov x5,1024
mov x6,5
mul x5,x5,x6
add x0,x0,x5
add x0,x0,6
mov x11,2
mov x12,3
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,4

bl cuadrado
//     OJO IZQUIERDO
mov x0,x4
mov x5,1024
mov x6,5
mul x5,x5,x6
add x0,x0,x5
add x0,x0,18
mov x11,2
mov x12,2
mov w13,0x0
sub x0,x0,1024
add x0,x0,4

bl cuadrado
//     OJO DERECHO
mov x0,x4
mov x5,1024
mov x6,5
mul x5,x5,x6
add x0,x0,x5
add x0,x0,34
mov x11,2
mov x12,2
mov w13,0x0
sub x0,x0,1024
add x0,x0,4

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,5
mul x5,x5,x6
add x0,x0,x5
add x0,x0,46
mov x11,2
mov x12,3
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,4

bl cuadrado
//-------------------------------------------------------------------------

mov x0,x4
mov x5,1024
mov x6,8
mul x5,x5,x6
add x0,x0,x5
add x0,x0,6
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,7
mul x5,x5,x6
add x0,x0,x5
add x0,x0,20
mov x11,8
mov x12,2
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,16

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,8
mul x5,x5,x6
add x0,x0,x5
add x0,x0,44
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado
//-------------------------------------------------------------------------
//     PRIMERA LINEA LARGA
mov x0,x4
mov x5,1024
mov x6,9
mul x5,x5,x6
add x0,x0,x5
add x0,x0,8
mov x11,20
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,40

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,10
mul x5,x5,x6
add x0,x0,x5
add x0,x0,10
mov x11,18
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,36

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,11
mul x5,x5,x6
add x0,x0,x5
add x0,x0,18
mov x11,10
mov x12,4
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,15
mul x5,x5,x6
add x0,x0,x5
add x0,x0,20
mov x11,8
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,16

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,16
mul x5,x5,x6
add x0,x0,x5
add x0,x0,22
mov x11,6
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,12

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,17
mul x5,x5,x6
add x0,x0,x5
add x0,x0,20
mov x11,8
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,16

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,18
mul x5,x5,x6
add x0,x0,x5
add x0,x0,18
mov x11,10
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,19
mul x5,x5,x6
add x0,x0,x5
add x0,x0,16
mov x11,4
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,8

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,19
mul x5,x5,x6
add x0,x0,x5
add x0,x0,32
mov x11,4
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,8

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,20
mul x5,x5,x6
add x0,x0,x5
add x0,x0,14
mov x11,4
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,8

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,20
mul x5,x5,x6
add x0,x0,x5
add x0,x0,34
mov x11,4
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,8

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,21
mul x5,x5,x6
add x0,x0,x5
add x0,x0,12
mov x11,4
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,8

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,21
mul x5,x5,x6
add x0,x0,x5
add x0,x0,36
mov x11,4
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,8

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,22
mul x5,x5,x6
add x0,x0,x5
add x0,x0,10
mov x11,4
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,8

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,22
mul x5,x5,x6
add x0,x0,x5
add x0,x0,38
mov x11,4
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,8

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,23
mul x5,x5,x6
add x0,x0,x5
add x0,x0,12
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,23
mul x5,x5,x6
add x0,x0,x5
add x0,x0,38
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,24
mul x5,x5,x6
add x0,x0,x5
add x0,x0,14
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,24
mul x5,x5,x6
add x0,x0,x5
add x0,x0,36
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,25
mul x5,x5,x6
add x0,x0,x5
add x0,x0,16
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,25
mul x5,x5,x6
add x0,x0,x5
add x0,x0,34
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,26
mul x5,x5,x6
add x0,x0,x5
add x0,x0,18
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,26
mul x5,x5,x6
add x0,x0,x5
add x0,x0,32
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,27
mul x5,x5,x6
add x0,x0,x5
add x0,x0,20
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,27
mul x5,x5,x6
add x0,x0,x5
add x0,x0,30
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,28
mul x5,x5,x6
add x0,x0,x5
add x0,x0,18
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,28
mul x5,x5,x6
add x0,x0,x5
add x0,x0,32
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,29
mul x5,x5,x6
add x0,x0,x5
add x0,x0,16
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,29
mul x5,x5,x6
add x0,x0,x5
add x0,x0,34
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,30
mul x5,x5,x6
add x0,x0,x5
add x0,x0,14
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,30
mul x5,x5,x6
add x0,x0,x5
add x0,x0,36
mov x11,3
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,6

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,31
mul x5,x5,x6
add x0,x0,x5
add x0,x0,6
mov x11,6
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,12

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,31
mul x5,x5,x6
add x0,x0,x5
add x0,x0,38
mov x11,6
mov x12,1
mov w13,0x7e0
sub x0,x0,1024
add x0,x0,12

bl cuadrado
//-------------------------------------------------------------------------

mov x0,x4
mov x5,1024
mov x6,27
mul x5,x5,x6
add x0,x0,x5
add x0,x0,8
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,27
mul x5,x5,x6
add x0,x0,x5
add x0,x0,46
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,28
mul x5,x5,x6
add x0,x0,x5
add x0,x0,10
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,28
mul x5,x5,x6
add x0,x0,x5
add x0,x0,44
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,29
mul x5,x5,x6
add x0,x0,x5
add x0,x0,12
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,29
mul x5,x5,x6
add x0,x0,x5
add x0,x0,42
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,32
mul x5,x5,x6
add x0,x0,x5
add x0,x0,14
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,32
mul x5,x5,x6
add x0,x0,x5
add x0,x0,40
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,33
mul x5,x5,x6
add x0,x0,x5
add x0,x0,12
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,33
mul x5,x5,x6
add x0,x0,x5
add x0,x0,42
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,34
mul x5,x5,x6
add x0,x0,x5
add x0,x0,10
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,34
mul x5,x5,x6
add x0,x0,x5
add x0,x0,44
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,35
mul x5,x5,x6
add x0,x0,x5
add x0,x0,8
sturh w13,[x0]

mov x0,x4
mov x5,1024
mov x6,35
mul x5,x5,x6
add x0,x0,x5
add x0,x0,46
sturh w13,[x0]

//-------------------------------------------------------------------------

b InfLoop

// ------------------------------------------------------------------------
//				FUNCION CUADRADO/RAYAS

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
