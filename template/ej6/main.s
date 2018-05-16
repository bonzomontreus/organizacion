.org 0x0000
.data
//       v_f: .dword 0xA
//        v_A: .dword 0x64,0xC8,0x12C
        dirBase: .dword 0x0000000040080000
//.text
//        ldr X0, v_f
//        ldr X6, =v_A
//        ldr X11, dirBase
//        add X6, X6, X11
//
//        ADD X9, X6, #8          // X9 = &v_A[0] + 8 = &v_A[1]
//        ADD  X10, X6, XZR       // X10 = &v_A[0] + 0 = &v_A[0]
//        STUR X10, [X9, #0]      // v_A[1] = &v_A[0]
//        LDUR X9, [X9, #0]       // X9 = &v_A[0]
//        ADD  X0, X9, X10        // v_f = &v_A[0] + &v_A[0]

.text
.org 0x0000
mov x0, 0x4008
lsl x0,x0,16
add x0,x0,0x100
