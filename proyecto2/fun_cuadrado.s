// x0 va a ser el punto de inicio
// x11 va a ser el ancho --- eje X
// x12 va a ser el alto  --- eje Y

cuadrado:

    mov x3, x0     // inicio del cuadrado
    mov x1,x11      // inicio de X
    mov x2,x12      // inicio de Y

loop_ini:			// ciclo inicia X
    add x0 , x0, 1024
    sub x0, x0, 80
    mov x1 , x11

loop_pinta:
    sturh w10,[x0]  // Pinta el pixel
    add x0,x0,2	   // Next pixel
    sub x1,x1,1	   // decrement X counter
    cbnz x1,loop_pinta	   // If not end row jump
    sub x2,x2,1	   // Decrement Y counter
    cbnz x2,loop_ini	   // if not last row, jump
