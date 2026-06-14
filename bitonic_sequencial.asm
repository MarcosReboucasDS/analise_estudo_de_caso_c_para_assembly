bitonicMerge.constprop.0:
        addi    sp,sp,-176
        sd      s1,152(sp)
        sd      ra,168(sp)
        sd      a2,56(sp)
        li      s1,1
        sd      a1,48(sp)
        ble     a2,s1,.L1
        sd      s11,72(sp)
        mv      s11,a0
.L7:
        ld      a5,56(sp)
        ld      a2,48(sp)
        sraiw   a1,a5,1
        add     a5,a1,a2
        slli    a4,a2,2
        mv      a3,a2
        sd      a2,0(sp)
        slli    a5,a5,2
        addw    a2,a1,a2
        sd      a1,56(sp)
        sd      a2,48(sp)
        add     a5,s11,a5
        add     a4,s11,a4
.L4:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        bge     a2,a1,.L3
        sw      a1,0(a4)
        sw      a2,0(a5)
.L3:
        ld      a2,48(sp)
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,a2,.L4
        ld      a5,56(sp)
        beq     a5,s1,.L48
        sd      a5,32(sp)
.L10:
        ld      a5,32(sp)
        ld      a2,0(sp)
        sraiw   a1,a5,1
        add     a5,a1,a2
        slli    a4,a2,2
        mv      a3,a2
        sd      a2,16(sp)
        slli    a5,a5,2
        addw    a2,a2,a1
        sd      a1,32(sp)
        sd      a2,0(sp)
        add     a5,s11,a5
        add     a4,s11,a4
.L6:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        bge     a2,a1,.L5
        sw      a1,0(a4)
        sw      a2,0(a5)
.L5:
        ld      a2,0(sp)
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,a2,.L6
        ld      a5,32(sp)
        beq     a5,s1,.L7
        sd      s10,80(sp)
        sd      a5,8(sp)
.L13:
        ld      a5,8(sp)
        ld      a2,16(sp)
        sraiw   a3,a5,1
        add     a5,a3,a2
        sd      a3,8(sp)
        slli    a5,a5,2
        addw    a3,a2,a3
        slli    a4,a2,2
        sd      a3,16(sp)
        mv      s10,a2
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,a2
.L9:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        bge     a2,a1,.L8
        sw      a1,0(a4)
        sw      a2,0(a5)
.L8:
        ld      a2,16(sp)
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,a2,.L9
        ld      a5,8(sp)
        beq     a5,s1,.L49
        sd      s0,160(sp)
        sd      s2,144(sp)
        sd      s3,136(sp)
        sd      s4,128(sp)
        sd      s5,120(sp)
        sd      s6,112(sp)
        sd      s7,104(sp)
        sd      s8,96(sp)
        sd      s9,88(sp)
        sd      a5,24(sp)
.L16:
        ld      a5,24(sp)
        mv      s5,s10
        slli    a4,s10,2
        sraiw   a3,a5,1
        add     a5,a3,s10
        slli    a5,a5,2
        sd      a3,24(sp)
        addw    s10,a3,s10
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s5
.L12:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        bge     a2,a1,.L11
        sw      a1,0(a4)
        sw      a2,0(a5)
.L11:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,s10,.L12
        ld      a5,24(sp)
        beq     a5,s1,.L50
        sd      a5,40(sp)
.L19:
        ld      a5,40(sp)
        mv      s4,s5
        slli    a4,s5,2
        sraiw   a3,a5,1
        add     a5,a3,s5
        slli    a5,a5,2
        sd      a3,40(sp)
        addw    s5,a3,s5
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s4
.L15:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        bge     a2,a1,.L14
        sw      a1,0(a4)
        sw      a2,0(a5)
.L14:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s5,a3,.L15
        ld      s6,40(sp)
        beq     s6,s1,.L16
.L22:
        sraiw   s6,s6,1
        add     a5,s6,s4
        mv      s2,s4
        slli    a4,s4,2
        slli    a5,a5,2
        addw    s4,s6,s4
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s2
.L18:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        bge     a2,a1,.L17
        sw      a1,0(a4)
        sw      a2,0(a5)
.L17:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s4,a3,.L18
        beq     s6,s1,.L19
        mv      s3,s6
.L25:
        sraiw   s3,s3,1
        add     a5,s3,s2
        mv      s7,s2
        slli    a4,s2,2
        slli    a5,a5,2
        addw    s2,s3,s2
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s7
.L21:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        bge     a2,a1,.L20
        sw      a1,0(a4)
        sw      a2,0(a5)
.L20:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s2,a3,.L21
        beq     s3,s1,.L22
        mv      s0,s3
.L29:
        sraiw   s0,s0,1
        add     a5,s0,s7
        mv      s9,s7
        slli    a4,s7,2
        slli    a5,a5,2
        addw    s7,s7,s0
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s9
.L24:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        bge     a2,a1,.L23
        sw      a1,0(a4)
        sw      a2,0(a5)
.L23:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s7,a3,.L24
        beq     s0,s1,.L25
        mv      s8,s0
.L28:
        sraiw   s8,s8,1
        add     a5,s8,s9
        mv      a1,s9
        slli    a4,s9,2
        slli    a5,a5,2
        addw    s9,s9,s8
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,a1
.L27:
        lw      a6,0(a4)
        lw      a7,0(a5)
        addiw   a3,a3,1
        bge     a6,a7,.L26
        sw      a7,0(a4)
        sw      a6,0(a5)
.L26:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s9,a3,.L27
        mv      a2,s8
        mv      a0,s11
        call    bitonicMerge.constprop.0
        bne     s8,s1,.L28
        j       .L29
.L48:
        ld      s11,72(sp)
.L1:
        ld      ra,168(sp)
        ld      s1,152(sp)
        addi    sp,sp,176
        jr      ra
.L50:
        ld      s0,160(sp)
        ld      s2,144(sp)
        ld      s3,136(sp)
        ld      s4,128(sp)
        ld      s5,120(sp)
        ld      s6,112(sp)
        ld      s7,104(sp)
        ld      s8,96(sp)
        ld      s9,88(sp)
        j       .L13
.L49:
        ld      s10,80(sp)
        j       .L10
bitonicMerge.constprop.1:
        addi    sp,sp,-176
        sd      s1,152(sp)
        sd      ra,168(sp)
        sd      a2,56(sp)
        li      s1,1
        sd      a1,48(sp)
        ble     a2,s1,.L52
        sd      s11,72(sp)
        mv      s11,a0
.L58:
        ld      a5,56(sp)
        ld      a2,48(sp)
        sraiw   a1,a5,1
        add     a5,a1,a2
        slli    a4,a2,2
        mv      a3,a2
        sd      a2,0(sp)
        slli    a5,a5,2
        addw    a2,a1,a2
        sd      a1,56(sp)
        sd      a2,48(sp)
        add     a5,s11,a5
        add     a4,s11,a4
.L55:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        ble     a2,a1,.L54
        sw      a1,0(a4)
        sw      a2,0(a5)
.L54:
        ld      a2,48(sp)
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,a2,.L55
        ld      a5,56(sp)
        beq     a5,s1,.L99
        sd      a5,32(sp)
.L61:
        ld      a5,32(sp)
        ld      a2,0(sp)
        sraiw   a1,a5,1
        add     a5,a1,a2
        slli    a4,a2,2
        mv      a3,a2
        sd      a2,16(sp)
        slli    a5,a5,2
        addw    a2,a2,a1
        sd      a1,32(sp)
        sd      a2,0(sp)
        add     a5,s11,a5
        add     a4,s11,a4
.L57:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        ble     a2,a1,.L56
        sw      a1,0(a4)
        sw      a2,0(a5)
.L56:
        ld      a2,0(sp)
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,a2,.L57
        ld      a5,32(sp)
        beq     a5,s1,.L58
        sd      s10,80(sp)
        sd      a5,8(sp)
.L64:
        ld      a5,8(sp)
        ld      a2,16(sp)
        sraiw   a3,a5,1
        add     a5,a3,a2
        sd      a3,8(sp)
        slli    a5,a5,2
        addw    a3,a2,a3
        slli    a4,a2,2
        sd      a3,16(sp)
        mv      s10,a2
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,a2
.L60:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        ble     a2,a1,.L59
        sw      a1,0(a4)
        sw      a2,0(a5)
.L59:
        ld      a2,16(sp)
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,a2,.L60
        ld      a5,8(sp)
        beq     a5,s1,.L100
        sd      s0,160(sp)
        sd      s2,144(sp)
        sd      s3,136(sp)
        sd      s4,128(sp)
        sd      s5,120(sp)
        sd      s6,112(sp)
        sd      s7,104(sp)
        sd      s8,96(sp)
        sd      s9,88(sp)
        sd      a5,24(sp)
.L67:
        ld      a5,24(sp)
        mv      s5,s10
        slli    a4,s10,2
        sraiw   a3,a5,1
        add     a5,a3,s10
        slli    a5,a5,2
        sd      a3,24(sp)
        addw    s10,a3,s10
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s5
.L63:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        ble     a2,a1,.L62
        sw      a1,0(a4)
        sw      a2,0(a5)
.L62:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,s10,.L63
        ld      a5,24(sp)
        beq     a5,s1,.L101
        sd      a5,40(sp)
.L70:
        ld      a5,40(sp)
        mv      s4,s5
        slli    a4,s5,2
        sraiw   a3,a5,1
        add     a5,a3,s5
        slli    a5,a5,2
        sd      a3,40(sp)
        addw    s5,a3,s5
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s4
.L66:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        ble     a2,a1,.L65
        sw      a1,0(a4)
        sw      a2,0(a5)
.L65:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s5,a3,.L66
        ld      s6,40(sp)
        beq     s6,s1,.L67
.L73:
        sraiw   s6,s6,1
        add     a5,s6,s4
        mv      s2,s4
        slli    a4,s4,2
        slli    a5,a5,2
        addw    s4,s6,s4
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s2
.L69:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        ble     a2,a1,.L68
        sw      a1,0(a4)
        sw      a2,0(a5)
.L68:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s4,a3,.L69
        beq     s6,s1,.L70
        mv      s3,s6
.L76:
        sraiw   s3,s3,1
        add     a5,s3,s2
        mv      s7,s2
        slli    a4,s2,2
        slli    a5,a5,2
        addw    s2,s3,s2
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s7
.L72:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        ble     a2,a1,.L71
        sw      a1,0(a4)
        sw      a2,0(a5)
.L71:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s2,a3,.L72
        beq     s3,s1,.L73
        mv      s0,s3
.L80:
        sraiw   s0,s0,1
        add     a5,s0,s7
        mv      s9,s7
        slli    a4,s7,2
        slli    a5,a5,2
        addw    s7,s7,s0
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,s9
.L75:
        lw      a2,0(a4)
        lw      a1,0(a5)
        addiw   a3,a3,1
        ble     a2,a1,.L74
        sw      a1,0(a4)
        sw      a2,0(a5)
.L74:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s7,a3,.L75
        beq     s0,s1,.L76
        mv      s8,s0
.L79:
        sraiw   s8,s8,1
        add     a5,s8,s9
        mv      a1,s9
        slli    a4,s9,2
        slli    a5,a5,2
        addw    s9,s9,s8
        add     a5,s11,a5
        add     a4,s11,a4
        mv      a3,a1
.L78:
        lw      a6,0(a4)
        lw      a7,0(a5)
        addiw   a3,a3,1
        ble     a6,a7,.L77
        sw      a7,0(a4)
        sw      a6,0(a5)
.L77:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s9,a3,.L78
        mv      a2,s8
        mv      a0,s11
        call    bitonicMerge.constprop.1
        bne     s8,s1,.L79
        j       .L80
.L99:
        ld      s11,72(sp)
.L52:
        ld      ra,168(sp)
        ld      s1,152(sp)
        addi    sp,sp,176
        jr      ra
.L101:
        ld      s0,160(sp)
        ld      s2,144(sp)
        ld      s3,136(sp)
        ld      s4,128(sp)
        ld      s5,120(sp)
        ld      s6,112(sp)
        ld      s7,104(sp)
        ld      s8,96(sp)
        ld      s9,88(sp)
        j       .L64
.L100:
        ld      s10,80(sp)
        j       .L61
bitonicSort.part.0.constprop.1:
        addi    sp,sp,-80
        sd      s0,64(sp)
        sd      s1,56(sp)
        sd      s2,48(sp)
        sd      ra,72(sp)
        sd      s3,40(sp)
        sraiw   s1,a2,1
        li      a5,1
        mv      s0,a1
        mv      s2,a0
        bne     s1,a5,.L123
.L103:
        li      s3,1
.L114:
        add     a5,s1,s0
        mv      a1,s0
        slli    a4,s0,2
        slli    a5,a5,2
        addw    s0,s1,s0
        add     a5,s2,a5
        add     a4,s2,a4
        mv      a3,a1
.L113:
        lw      a2,0(a4)
        lw      a0,0(a5)
        addiw   a3,a3,1
        ble     a2,a0,.L112
        sw      a0,0(a4)
        sw      a2,0(a5)
.L112:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,s0,.L113
        mv      a2,s1
        mv      a0,s2
        call    bitonicMerge.constprop.1
        beq     s1,s3,.L121
        sraiw   s1,s1,1
        j       .L114
.L121:
        ld      ra,72(sp)
        ld      s0,64(sp)
        ld      s1,56(sp)
        ld      s2,48(sp)
        ld      s3,40(sp)
        addi    sp,sp,80
        jr      ra
.L123:
        mv      s3,a2
        mv      a2,s1
        sd      s4,32(sp)
        sd      s5,24(sp)
        addw    s4,s1,a1
        call    bitonicSort.part.0.constprop.1
        sraiw   a7,s3,2
        li      a5,1
        mv      s5,s1
        bne     a7,a5,.L124
.L104:
        li      s3,1
.L111:
        sraiw   s5,s5,1
        add     a5,s5,s4
        mv      a1,s4
        slli    a4,s4,2
        slli    a5,a5,2
        addw    s4,s5,s4
        add     a5,s2,a5
        add     a4,s2,a4
        mv      a3,a1
.L110:
        lw      a2,0(a4)
        lw      a0,0(a5)
        addiw   a3,a3,1
        bge     a2,a0,.L109
        sw      a0,0(a4)
        sw      a2,0(a5)
.L109:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,s4,.L110
        mv      a2,s5
        mv      a0,s2
        call    bitonicMerge.constprop.0
        bne     s5,s3,.L111
        ld      s4,32(sp)
        ld      s5,24(sp)
        j       .L103
.L124:
        addw    a6,a7,s4
        mv      a2,a7
        mv      a1,s4
        mv      a0,s2
        sd      a7,8(sp)
        sd      a6,0(sp)
        call    bitonicSort.part.0.constprop.1
        sraiw   s3,s3,3
        li      a5,1
        ld      a6,0(sp)
        ld      a7,8(sp)
        bne     s3,a5,.L125
.L105:
        li      s3,1
.L108:
        sraiw   a7,a7,1
        add     a5,a7,a6
        mv      a1,a6
        slli    a4,a6,2
        slli    a5,a5,2
        addw    a6,a7,a6
        add     a5,s2,a5
        add     a4,s2,a4
        mv      a3,a1
.L107:
        lw      a2,0(a4)
        lw      a0,0(a5)
        addiw   a3,a3,1
        bge     a2,a0,.L106
        sw      a0,0(a4)
        sw      a2,0(a5)
.L106:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,a6,.L107
        mv      a2,a7
        mv      a0,s2
        sd      a6,8(sp)
        sd      a7,0(sp)
        call    bitonicMerge.constprop.0
        ld      a7,0(sp)
        ld      a6,8(sp)
        bne     a7,s3,.L108
        j       .L104
.L125:
        mv      a1,a6
        mv      a2,s3
        mv      a0,s2
        sd      s6,16(sp)
        addw    s6,s3,a6
        call    bitonicSort.part.0.constprop.1
        mv      a1,s6
        mv      a2,s3
        mv      a0,s2
        call    bitonicSort.part.0.constprop.0
        ld      a7,8(sp)
        ld      a6,0(sp)
        ld      s6,16(sp)
        j       .L105
bitonicSort.part.0.constprop.0:
        addi    sp,sp,-80
        sd      s0,64(sp)
        sd      s1,56(sp)
        sd      s2,48(sp)
        sd      ra,72(sp)
        sd      s3,40(sp)
        sraiw   s1,a2,1
        li      a5,1
        mv      s0,a1
        mv      s2,a0
        bne     s1,a5,.L147
.L127:
        li      s3,1
.L138:
        add     a5,s1,s0
        mv      a1,s0
        slli    a4,s0,2
        slli    a5,a5,2
        addw    s0,s1,s0
        add     a5,s2,a5
        add     a4,s2,a4
        mv      a3,a1
.L137:
        lw      a2,0(a4)
        lw      a0,0(a5)
        addiw   a3,a3,1
        bge     a2,a0,.L136
        sw      a0,0(a4)
        sw      a2,0(a5)
.L136:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,s0,.L137
        mv      a2,s1
        mv      a0,s2
        call    bitonicMerge.constprop.0
        beq     s1,s3,.L145
        sraiw   s1,s1,1
        j       .L138
.L145:
        ld      ra,72(sp)
        ld      s0,64(sp)
        ld      s1,56(sp)
        ld      s2,48(sp)
        ld      s3,40(sp)
        addi    sp,sp,80
        jr      ra
.L147:
        mv      s3,a2
        mv      a2,s1
        sd      s4,32(sp)
        sd      s5,24(sp)
        addw    s4,s1,a1
        call    bitonicSort.part.0.constprop.1
        sraiw   a7,s3,2
        li      a5,1
        mv      s5,s1
        bne     a7,a5,.L148
.L128:
        li      s3,1
.L135:
        sraiw   s5,s5,1
        add     a5,s5,s4
        mv      a1,s4
        slli    a4,s4,2
        slli    a5,a5,2
        addw    s4,s5,s4
        add     a5,s2,a5
        add     a4,s2,a4
        mv      a3,a1
.L134:
        lw      a2,0(a4)
        lw      a0,0(a5)
        addiw   a3,a3,1
        bge     a2,a0,.L133
        sw      a0,0(a4)
        sw      a2,0(a5)
.L133:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,s4,.L134
        mv      a2,s5
        mv      a0,s2
        call    bitonicMerge.constprop.0
        bne     s5,s3,.L135
        ld      s4,32(sp)
        ld      s5,24(sp)
        j       .L127
.L148:
        addw    a6,a7,s4
        mv      a2,a7
        mv      a1,s4
        mv      a0,s2
        sd      a7,8(sp)
        sd      a6,0(sp)
        call    bitonicSort.part.0.constprop.1
        sraiw   s3,s3,3
        li      a5,1
        ld      a6,0(sp)
        ld      a7,8(sp)
        bne     s3,a5,.L149
.L129:
        li      s3,1
.L132:
        sraiw   a7,a7,1
        add     a5,a7,a6
        mv      a1,a6
        slli    a4,a6,2
        slli    a5,a5,2
        addw    a6,a7,a6
        add     a5,s2,a5
        add     a4,s2,a4
        mv      a3,a1
.L131:
        lw      a2,0(a4)
        lw      a0,0(a5)
        addiw   a3,a3,1
        bge     a2,a0,.L130
        sw      a0,0(a4)
        sw      a2,0(a5)
.L130:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a3,a6,.L131
        mv      a2,a7
        mv      a0,s2
        sd      a6,8(sp)
        sd      a7,0(sp)
        call    bitonicMerge.constprop.0
        ld      a7,0(sp)
        ld      a6,8(sp)
        bne     a7,s3,.L132
        j       .L128
.L149:
        mv      a1,a6
        mv      a2,s3
        mv      a0,s2
        sd      s6,16(sp)
        addw    s6,s3,a6
        call    bitonicSort.part.0.constprop.1
        mv      a1,s6
        mv      a2,s3
        mv      a0,s2
        call    bitonicSort.part.0.constprop.0
        ld      a7,8(sp)
        ld      a6,0(sp)
        ld      s6,16(sp)
        j       .L129
swap:
        lw      a4,0(a1)
        lw      a5,0(a0)
        sw      a4,0(a0)
        sw      a5,0(a1)
        ret
compareAndSwap:
        li      a5,1
        beq     a3,a5,.L155
        bne     a3,zero,.L151
        slli    a1,a1,2
        slli    a2,a2,2
        add     a1,a0,a1
        add     a0,a0,a2
        lw      a5,0(a1)
        lw      a4,0(a0)
        bge     a5,a4,.L151
.L153:
        sw      a4,0(a1)
        sw      a5,0(a0)
.L151:
        ret
.L155:
        slli    a1,a1,2
        slli    a2,a2,2
        add     a1,a0,a1
        add     a0,a0,a2
        lw      a5,0(a1)
        lw      a4,0(a0)
        bgt     a5,a4,.L153
        ret
bitonicMerge:
        addi    sp,sp,-48
        sd      s4,0(sp)
        sd      ra,40(sp)
        li      s4,1
        ble     a2,s4,.L156
        sd      s0,32(sp)
        sd      s1,24(sp)
        sd      s2,16(sp)
        sd      s3,8(sp)
        mv      s1,a2
        mv      s0,a1
        mv      s3,a3
        mv      s2,a0
        beq     a3,s4,.L158
        bne     a3,zero,.L160
.L159:
        sraiw   s1,s1,1
        add     a5,s1,s0
        mv      a1,s0
        slli    a4,s0,2
        slli    a5,a5,2
        addw    s0,s1,s0
        add     a5,s2,a5
        add     a4,s2,a4
        mv      a3,a1
.L162:
        lw      a6,0(a4)
        lw      a7,0(a5)
        addiw   a3,a3,1
        bge     a6,a7,.L161
        sw      a7,0(a4)
        sw      a6,0(a5)
.L161:
        addi    a4,a4,4
        addi    a5,a5,4
        bgt     s0,a3,.L162
        li      a3,0
        mv      a2,s1
        mv      a0,s2
        call    bitonicMerge
        bne     s1,s4,.L159
.L174:
        ld      s0,32(sp)
        ld      s1,24(sp)
        ld      s2,16(sp)
        ld      s3,8(sp)
.L156:
        ld      ra,40(sp)
        ld      s4,0(sp)
        addi    sp,sp,48
        jr      ra
.L175:
        li      a3,1
        mv      a2,s1
        mv      a0,s2
        call    bitonicMerge
        beq     s1,s3,.L174
.L158:
        sraiw   s1,s1,1
        add     a5,s1,s0
        mv      a1,s0
        slli    a4,s0,2
        slli    a5,a5,2
        addw    s0,s1,s0
        add     a5,s2,a5
        add     a4,s2,a4
        mv      a6,a1
.L164:
        lw      a2,0(a4)
        lw      a7,0(a5)
        addiw   a6,a6,1
        ble     a2,a7,.L163
        sw      a7,0(a4)
        sw      a2,0(a5)
.L163:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a6,s0,.L164
        j       .L175
.L160:
        sraiw   s1,s1,1
        mv      a1,s0
        mv      a2,s1
        mv      a3,s3
        mv      a0,s2
        addw    s0,s0,s1
        call    bitonicMerge
        bne     s1,s4,.L160
        j       .L174
bitonicSort:
        li      a5,1
        bgt     a2,a5,.L189
        ret
.L189:
        addi    sp,sp,-96
        sd      s0,80(sp)
        sd      s1,72(sp)
        sd      s2,64(sp)
        sd      s3,56(sp)
        sd      s4,48(sp)
        sd      s5,40(sp)
        sd      ra,88(sp)
        sraiw   s0,a2,1
        mv      s1,a0
        mv      s3,a1
        mv      s5,a1
        mv      s4,a3
        mv      s2,a2
        bne     s0,a5,.L190
.L178:
        ld      s0,80(sp)
        ld      ra,88(sp)
        ld      s3,56(sp)
        mv      a3,s4
        mv      a2,s2
        ld      s4,48(sp)
        ld      s2,64(sp)
        mv      a1,s5
        mv      a0,s1
        ld      s5,40(sp)
        ld      s1,72(sp)
        addi    sp,sp,96
        tail    bitonicMerge
.L190:
        mv      a2,s0
        call    bitonicSort.part.0.constprop.1
        sraiw   a4,s2,2
        li      a5,1
        addw    a3,s3,s0
        bne     a4,a5,.L191
.L183:
        sraiw   s0,s0,1
        add     a5,s0,a3
        mv      a1,a3
        slli    a4,a3,2
        slli    a5,a5,2
        addw    a3,s0,a3
        add     a5,s1,a5
        add     a4,s1,a4
        mv      a6,a1
.L182:
        lw      a7,0(a4)
        lw      t1,0(a5)
        addiw   a6,a6,1
        bge     a7,t1,.L181
        sw      t1,0(a4)
        sw      a7,0(a5)
.L181:
        addi    a4,a4,4
        addi    a5,a5,4
        blt     a6,a3,.L182
        mv      a2,s0
        mv      a0,s1
        sd      a3,8(sp)
        call    bitonicMerge.constprop.0
        li      a5,1
        ld      a3,8(sp)
        bne     s0,a5,.L183
        j       .L178
.L191:
        mv      a2,a4
        mv      a1,a3
        mv      a0,s1
        addw    s3,a4,a3
        sd      a3,16(sp)
        sd      a4,8(sp)
        call    bitonicSort.part.0.constprop.1
        sraiw   a2,s2,3
        li      a5,1
        ld      a4,8(sp)
        ld      a3,16(sp)
        bne     a2,a5,.L192
.L180:
        mv      a2,a4
        mv      a1,s3
        mv      a0,s1
        sd      a3,8(sp)
        call    bitonicMerge.constprop.0
        ld      a3,8(sp)
        j       .L183
.L192:
        mv      a1,s3
        mv      a0,s1
        sd      a4,24(sp)
        sd      a2,8(sp)
        call    bitonicSort.part.0.constprop.1
        ld      a2,8(sp)
        mv      a0,s1
        addw    a1,a2,s3
        call    bitonicSort.part.0.constprop.0
        ld      a4,24(sp)
        ld      a3,16(sp)
        j       .L180
.LC0:
        .string "%d "
printArray:
        ble     a1,zero,.L198
        addi    sp,sp,-32
        sd      s1,8(sp)
        slli    s1,a1,2
        sd      s0,16(sp)
        sd      ra,24(sp)
        mv      s0,a0
        add     s1,a0,s1
.L195:
        lw      a1,0(s0)
        lla     a0,.LC0
        addi    s0,s0,4
        call    printf@plt
        bne     s0,s1,.L195
        ld      s0,16(sp)
        ld      ra,24(sp)
        ld      s1,8(sp)
        li      a0,10
        addi    sp,sp,32
        tail    putchar@plt
.L198:
        li      a0,10
        tail    putchar@plt
isPowerOfTwo:
        ble     a0,zero,.L203
        addiw   a5,a0,-1
        and     a0,a0,a5
        seqz    a0,a0
        ret
.L203:
        li      a0,0
        ret
.LC1:
        .string "Enter number of elements (power of 2): "
.LC2:
        .string "%d"
.LC3:
        .string "Invalid input. Please enter a positive integer."
.LC4:
        .string "Error: Bitonic sort requires the number of elements to be a power of 2."
.LC5:
        .string "Memory allocation failed."
.LC6:
        .string "Enter %d integers:\n"
.LC7:
        .string "Invalid input. Please enter integers only."
.LC8:
        .string "Original array:"
.LC9:
        .string "Sorted array (Ascending):"
main:
        addi    sp,sp,-64
        lla     a0,.LC1
        sd      ra,56(sp)
        sd      s2,32(sp)
        call    printf@plt
        addi    a1,sp,12
        lla     a0,.LC2
        call    __isoc23_scanf@plt
        li      a5,1
        bne     a0,a5,.L205
        sd      s0,48(sp)
        lw      s0,12(sp)
        ble     s0,zero,.L219
        addiw   a5,s0,-1
        and     a5,s0,a5
        mv      s2,a0
        bne     a5,zero,.L208
        slli    a0,s0,2
        sd      s4,16(sp)
        call    malloc@plt
        mv      s4,a0
        beq     a0,zero,.L220
        mv      a1,s0
        lla     a0,.LC6
        call    printf@plt
        lw      a5,12(sp)
        ble     a5,zero,.L212
        sd      s1,40(sp)
        sd      s3,24(sp)
        mv      s1,s4
        li      s0,0
        mv      s3,s2
        j       .L214
.L213:
        lw      a5,12(sp)
        addi    s1,s1,4
        ble     a5,s0,.L221
.L214:
        mv      a1,s1
        lla     a0,.LC2
        call    __isoc23_scanf@plt
        addiw   s0,s0,1
        beq     a0,s3,.L213
        lla     a0,.LC7
        call    puts@plt
        mv      a0,s4
        call    free@plt
        ld      s0,48(sp)
        ld      s1,40(sp)
        ld      s3,24(sp)
        ld      s4,16(sp)
        j       .L207
.L219:
        ld      s0,48(sp)
.L205:
        lla     a0,.LC3
        call    puts@plt
        li      s2,1
.L207:
        ld      ra,56(sp)
        mv      a0,s2
        ld      s2,32(sp)
        addi    sp,sp,64
        jr      ra
.L208:
        lla     a0,.LC4
        call    puts@plt
        ld      s0,48(sp)
        j       .L207
.L221:
        ld      s1,40(sp)
        ld      s3,24(sp)
.L212:
        lla     a0,.LC8
        call    puts@plt
        lw      a1,12(sp)
        mv      a0,s4
        call    printArray
        lw      a2,12(sp)
        li      a5,1
        ble     a2,a5,.L215
        li      a1,0
        mv      a0,s4
        call    bitonicSort.part.0.constprop.1
.L215:
        lla     a0,.LC9
        call    puts@plt
        lw      a1,12(sp)
        mv      a0,s4
        li      s2,0
        call    printArray
        mv      a0,s4
        call    free@plt
        ld      s0,48(sp)
        ld      s4,16(sp)
        j       .L207
.L220:
        lla     a0,.LC5
        call    puts@plt
        ld      s0,48(sp)
        ld      s4,16(sp)
        j       .L207