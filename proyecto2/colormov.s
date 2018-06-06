.globl app
app:
//  x1 primer registro

mov w10, 0xF800    		// 0xF800 = RED
mov w11, 0x07E0 			// 0x07E0 == GREEN
mov w12, 0x001F 			// 0x001F == BLUE


input : x8 color actual , x9 estado de color
variables temporales: x13,x14,x15

mov x13,x9
sub x13,x13,1
cbz x13,verde_0
sub x13,x13,1
cbz x13,rojo_32
sub x13,x13,1
cbz x13,azul_0
sub x13,x13,1
cbz x13,verde_64
sub x13,x13,1
cbz x13,azul_32
cbnz x13, return

// verde 0 a 64
// color a armar verde + rojo = 0xffe0
verde_0_64:
    mov x14,0xffe0
    sub x14,x14,x8
    cbz x14,cambio_estado
    add x8,x8,0x40
    b return

// rojo 32 a 0
// color a armar verde = 0x07e0
rojo_32_0:
    mov x14,0x07e0
    sub x14,x14,x8
    cbz x14,cambio_estado
    sub x8,x8,0x800
    b return

// azul 0 a 32
// color a armar verde + azul = 0x07ff
azul_0_32:
    mov x14,0x07ff
    sub x14,x14,x8
    cbz x14,cambio_estado
    add x8,x8,0x1
    b return

// verde 64 a 0
// color a armar azul = 0x001f
verde_64_0:
    mov x14,0x001f
    sub x14,x14,x8
    cbz x14,cambio_estado
    sub x8,x8,0x40
    b return

// rojo 0 a 32
// color a armar azul + rojo = 0xf81f
rojo_0_32:
    mov x14,0xf81f
    sub x14,x14,x8
    cbz x14,cambio_estado
    add x8,x8,0x800
    b return

// azul 32 a 0
// color a armar rojo = 0xf800
azul_32_0:
    mov x14,0xf800
    sub x14,x14,x8
    cbz x14,cambio_estado
    sub x8,x8,0x1
    b return

cambio_estado:
    mov x15, 6
    sub x15, x15,x9
    cbnz x15,skip
    mov x9, 1
skip:
    add x9,x9,1


return:
