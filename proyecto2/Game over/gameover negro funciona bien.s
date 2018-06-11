.globl app
app:
	// X0 contiene la direccion base del framebuffer
	mov x4,x0 // copia del valor original del fb
	mov w8,0xf800

	//---------------- CODE HERE ------------------------------------
	// 			FUNCION BASE

	mov w10, 0x0    // 0xffff = WHITE
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

mov x0,x4
mov x5,1024
mov x6,201
mul x5,x5,x6
add x0,x0,x5
add x0,x0,332
mov x11,30
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,60

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,201
mul x5,x5,x6
add x0,x0,x5
add x0,x0,432
mov x11,20
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,40

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,201
mul x5,x5,x6
add x0,x0,x5
add x0,x0,512
mov x11,10
mov x12,50
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,201
mul x5,x5,x6
add x0,x0,x5
add x0,x0,592
mov x11,10
mov x12,50
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,201
mul x5,x5,x6
add x0,x0,x5
add x0,x0,632
mov x11,40
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,80

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,211
mul x5,x5,x6
add x0,x0,x5
add x0,x0,312
mov x11,10
mov x12,30
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,211
mul x5,x5,x6
add x0,x0,x5
add x0,x0,412
mov x11,10
mov x12,40
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,211
mul x5,x5,x6
add x0,x0,x5
add x0,x0,472
mov x11,10
mov x12,40
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,211
mul x5,x5,x6
add x0,x0,x5
add x0,x0,532
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,211
mul x5,x5,x6
add x0,x0,x5
add x0,x0,572
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,211
mul x5,x5,x6
add x0,x0,x5
add x0,x0,632
mov x11,10
mov x12,40
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,221
mul x5,x5,x6
add x0,x0,x5
add x0,x0,352
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,221
mul x5,x5,x6
add x0,x0,x5
add x0,x0,372
mov x11,10
mov x12,30
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,221
mul x5,x5,x6
add x0,x0,x5
add x0,x0,432
mov x11,20
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,40

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,221
mul x5,x5,x6
add x0,x0,x5
add x0,x0,552
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,221
mul x5,x5,x6
add x0,x0,x5
add x0,x0,652
mov x11,20
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,40

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,241
mul x5,x5,x6
add x0,x0,x5
add x0,x0,332
mov x11,20
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,40

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,241
mul x5,x5,x6
add x0,x0,x5
add x0,x0,652
mov x11,30
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,60

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,261
mul x5,x5,x6
add x0,x0,x5
add x0,x0,332
mov x11,20
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,40

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,261
mul x5,x5,x6
add x0,x0,x5
add x0,x0,412
mov x11,10
mov x12,30
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,261
mul x5,x5,x6
add x0,x0,x5
add x0,x0,492
mov x11,10
mov x12,30
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,261
mul x5,x5,x6
add x0,x0,x5
add x0,x0,532
mov x11,10
mov x12,50
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,261
mul x5,x5,x6
add x0,x0,x5
add x0,x0,552
mov x11,30
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,60

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,261
mul x5,x5,x6
add x0,x0,x5
add x0,x0,632
mov x11,10
mov x12,50
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,261
mul x5,x5,x6
add x0,x0,x5
add x0,x0,652
mov x11,20
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,40

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,271
mul x5,x5,x6
add x0,x0,x5
add x0,x0,312
mov x11,10
mov x12,30
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,271
mul x5,x5,x6
add x0,x0,x5
add x0,x0,372
mov x11,10
mov x12,30
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,271
mul x5,x5,x6
add x0,x0,x5
add x0,x0,692
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,281
mul x5,x5,x6
add x0,x0,x5
add x0,x0,552
mov x11,20
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,40

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,281
mul x5,x5,x6
add x0,x0,x5
add x0,x0,652
mov x11,30
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,60

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,291
mul x5,x5,x6
add x0,x0,x5
add x0,x0,432
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,291
mul x5,x5,x6
add x0,x0,x5
add x0,x0,472
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,291
mul x5,x5,x6
add x0,x0,x5
add x0,x0,672
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,301
mul x5,x5,x6
add x0,x0,x5
add x0,x0,332
mov x11,20
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,40

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,301
mul x5,x5,x6
add x0,x0,x5
add x0,x0,452
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,301
mul x5,x5,x6
add x0,x0,x5
add x0,x0,552
mov x11,30
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,60

bl cuadrado

mov x0,x4
mov x5,1024
mov x6,301
mul x5,x5,x6
add x0,x0,x5
add x0,x0,692
mov x11,10
mov x12,10
mov w13,0xffff
sub x0,x0,1024
add x0,x0,20

bl cuadrado
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
