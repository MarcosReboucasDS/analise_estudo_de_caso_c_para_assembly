gerarElementos._omp_fn.0:
        addi    sp,sp,-64
        sd      s0,48(sp)
        lw      s0,8(a0)
        sd      ra,56(sp)
        sd      s1,40(sp)
        sd      s3,24(sp)
        ld      s3,0(a0)
        call    omp_get_thread_num@plt
        mv      s1,a0
        sw      a0,12(sp)
        call    omp_get_num_threads@plt
        remw    a5,s0,a0
        divw    a0,s0,a0
        blt     s1,a5,.L2
.L5:
        mulw    s1,a0,s1
        addw    a5,s1,a5
        addw    a4,a0,a5
        ble     a4,a5,.L3
        slli    s1,a0,32
        srli    s1,s1,32
        add     s1,s1,a5
        sd      s2,32(sp)
        slli    s0,a5,2
        slli    s1,s1,2
        li      s2,1374388224
        add     s1,s1,s3
        add     s0,s0,s3
        addi    s2,s2,1311
        li      s3,100
.L4:
        addi    a0,sp,12
        call    rand_r@plt
        mul     a5,a0,s2
        sraiw   a4,a0,31
        addi    s0,s0,4
        srai    a5,a5,37
        subw    a5,a5,a4
        mulw    a5,s3,a5
        subw    a0,a0,a5
        sw      a0,-4(s0)
        bne     s0,s1,.L4
        ld      s2,32(sp)
.L3:
        call    GOMP_barrier@plt
        ld      ra,56(sp)
        ld      s0,48(sp)
        ld      s1,40(sp)
        ld      s3,24(sp)
        addi    sp,sp,64
        jr      ra
.L2:
        addiw   a0,a0,1
        li      a5,0
        j       .L5
bitonicMerge.part.3:
        addi    sp,sp,-96
        sd      s0,80(sp)
        mv      s0,a2
        li      a2,4096
        addi    a2,a2,-2047
        sgt     a2,s0,a2
        sd      s1,72(sp)
        sd      s2,64(sp)
        sd      s3,56(sp)
        sd      s4,48(sp)
        mv      s1,a1
        mv      s4,a0
        mv      s2,a3
        sraiw   s3,s0,1
        addi    a1,sp,24
        xori    a2,a2,1
        li      a3,0
        lla     a0,bitonicMerge._omp_fn.0
        sd      ra,88(sp)
        sd      s4,24(sp)
        sw      s1,32(sp)
        sw      s2,36(sp)
        sw      s3,40(sp)
        call    GOMP_parallel@plt
        li      a5,1024
        sgt     s0,s0,a5
        mv      a5,s0
        addi    a1,sp,24
        sd      zero,8(sp)
        sd      zero,0(sp)
        li      a7,0
        li      a6,0
        li      a4,8
        li      a3,24
        li      a2,0
        lla     a0,bitonicMerge._omp_fn.1
        sd      s4,24(sp)
        sw      s3,40(sp)
        sw      s2,36(sp)
        sw      s1,32(sp)
        call    GOMP_task@plt
        mv      a5,s0
        sd      zero,8(sp)
        sd      zero,0(sp)
        addi    a1,sp,24
        li      a7,0
        li      a6,0
        li      a4,8
        li      a3,24
        li      a2,0
        lla     a0,bitonicMerge._omp_fn.2
        sd      s4,24(sp)
        sw      s3,40(sp)
        sw      s2,36(sp)
        sw      s1,32(sp)
        call    GOMP_task@plt
        ld      s0,80(sp)
        ld      ra,88(sp)
        ld      s1,72(sp)
        ld      s2,64(sp)
        ld      s3,56(sp)
        ld      s4,48(sp)
        addi    sp,sp,96
        tail    GOMP_taskwait@plt
bitonicMerge._omp_fn.2:
        lw      a2,16(a0)
        li      a5,1
        bgt     a2,a5,.L14
        ret
.L14:
        lw      a1,8(a0)
        lw      a3,12(a0)
        ld      a0,0(a0)
        addw    a1,a1,a2
        tail    bitonicMerge.part.3
bitonicMerge._omp_fn.1:
        lw      a2,16(a0)
        li      a5,1
        bgt     a2,a5,.L17
        ret
.L17:
        lw      a3,12(a0)
        lw      a1,8(a0)
        ld      a0,0(a0)
        tail    bitonicMerge.part.3
.LC0:
        .string "Sub-sequ\303\252ncia Bit\303\264nica gerada (Inicio: %d, Tamanho: %d):\n"
.LC1:
        .string "%d "
bitonicSort.part.2:
        addi    sp,sp,-96
        sd      s0,80(sp)
        li      s0,1024
        sgt     s0,a1,s0
        sd      s1,72(sp)
        sd      s3,56(sp)
        sd      s4,48(sp)
        mv      s3,a1
        sd      s5,40(sp)
        sd      s6,32(sp)
        mv      s4,a2
        mv      s5,a0
        sraiw   s1,a2,1
        mv      a5,s0
        addi    a1,sp,16
        li      a7,0
        li      a6,0
        li      a4,8
        li      a2,0
        lla     a0,bitonicSort._omp_fn.0
        mv      s6,a3
        sd      zero,8(sp)
        li      a3,16
        sd      zero,0(sp)
        sd      ra,88(sp)
        sw      s3,24(sp)
        sd      s5,16(sp)
        sw      s1,28(sp)
        call    GOMP_task@plt
        addi    a1,sp,16
        li      a2,0
        lla     a0,bitonicSort._omp_fn.1
        mv      a5,s0
        li      a7,0
        li      a6,0
        li      a4,8
        li      a3,16
        sd      zero,8(sp)
        sd      zero,0(sp)
        sw      s1,28(sp)
        sd      s5,16(sp)
        sw      s3,24(sp)
        call    GOMP_task@plt
        call    GOMP_taskwait@plt
        call    GOMP_critical_start@plt
        mv      a2,s4
        mv      a1,s3
        lla     a0,.LC0
        call    printf@plt
        beq     s4,zero,.L19
        slli    s0,s3,2
        sd      s2,64(sp)
        add     s0,s5,s0
        addw    s2,s4,s3
        mv      s1,s3
.L20:
        lw      a1,0(s0)
        lla     a0,.LC1
        addiw   s1,s1,1
        call    printf@plt
        addi    s0,s0,4
        blt     s1,s2,.L20
        ld      s2,64(sp)
.L19:
        li      a0,10
        call    putchar@plt
        call    GOMP_critical_end@plt
        ld      s0,80(sp)
        ld      ra,88(sp)
        ld      s1,72(sp)
        mv      a3,s6
        mv      a2,s4
        ld      s6,32(sp)
        ld      s4,48(sp)
        mv      a1,s3
        mv      a0,s5
        ld      s3,56(sp)
        ld      s5,40(sp)
        addi    sp,sp,96
        tail    bitonicMerge.part.3
bitonicSort._omp_fn.1:
        lw      a2,12(a0)
        li      a5,1
        bgt     a2,a5,.L28
        ret
.L28:
        lw      a1,8(a0)
        ld      a0,0(a0)
        li      a3,0
        addw    a1,a2,a1
        tail    bitonicSort.part.2
bitonicSort._omp_fn.0:
        lw      a2,12(a0)
        li      a3,1
        bgt     a2,a3,.L31
        ret
.L31:
        lw      a1,8(a0)
        ld      a0,0(a0)
        tail    bitonicSort.part.2
main._omp_fn.0:
        addi    sp,sp,-32
        sd      s0,16(sp)
        lw      s0,8(a0)
        sd      s1,8(sp)
        sd      ra,24(sp)
        ld      s1,0(a0)
        call    GOMP_single_start@plt
        li      a3,1
        sgt     a5,s0,a3
        and     a0,a0,a5
        bne     a0,zero,.L36
        ld      ra,24(sp)
        ld      s0,16(sp)
        ld      s1,8(sp)
        addi    sp,sp,32
        jr      ra
.L36:
        mv      a2,s0
        ld      s0,16(sp)
        ld      ra,24(sp)
        mv      a0,s1
        ld      s1,8(sp)
        li      a1,0
        addi    sp,sp,32
        tail    bitonicSort.part.2
bitonicMerge._omp_fn.0:
        addi    sp,sp,-32
        sd      s0,16(sp)
        lw      s0,16(a0)
        sd      ra,24(sp)
        sd      s1,8(sp)
        sd      s2,0(sp)
        mv      s2,a0
        call    omp_get_num_threads@plt
        mv      s1,a0
        call    omp_get_thread_num@plt
        remw    a3,s0,s1
        divw    a4,s0,s1
        blt     a0,a3,.L38
.L45:
        mulw    a5,a4,a0
        addw    a5,a5,a3
        addw    a4,a4,a5
        bge     a5,a4,.L37
        lw      a2,8(s2)
        lw      a3,12(s2)
        li      a0,1
        addw    a5,a2,a5
        ld      a1,0(s2)
        addw    a2,a2,a4
        beq     a3,a0,.L40
        bne     a3,zero,.L37
        add     a4,s0,a5
        slli    a4,a4,2
        slli    a3,a5,2
        add     a4,a4,a1
        add     a3,a3,a1
.L42:
        lw      a1,0(a3)
        lw      a0,0(a4)
        addiw   a5,a5,1
        bge     a1,a0,.L41
        sw      a0,0(a3)
        sw      a1,0(a4)
.L41:
        addi    a3,a3,4
        addi    a4,a4,4
        bgt     a2,a5,.L42
.L37:
        ld      ra,24(sp)
        ld      s0,16(sp)
        ld      s1,8(sp)
        ld      s2,0(sp)
        addi    sp,sp,32
        jr      ra
.L38:
        addiw   a4,a4,1
        li      a3,0
        j       .L45
.L40:
        add     a4,s0,a5
        slli    a4,a4,2
        slli    a3,a5,2
        add     a4,a4,a1
        add     a3,a3,a1
.L44:
        lw      a1,0(a3)
        lw      a0,0(a4)
        addiw   a5,a5,1
        ble     a1,a0,.L43
        sw      a0,0(a3)
        sw      a1,0(a4)
.L43:
        addi    a3,a3,4
        addi    a4,a4,4
        bgt     a2,a5,.L44
        ld      ra,24(sp)
        ld      s0,16(sp)
        ld      s1,8(sp)
        ld      s2,0(sp)
        addi    sp,sp,32
        jr      ra
square:
        mulw    a0,a0,a0
        ret
menorIgualQueZero:
        slti    a0,a0,1
        ret
potenciaDeDois:
        ble     a0,zero,.L53
        addiw   a5,a0,-1
        and     a0,a0,a5
        seqz    a0,a0
        ret
.L53:
        li      a0,0
        ret
.LC2:
        .string "Informe a quantidade de elementos a serem ordenados: "
.LC3:
        .string "%d"
.LC4:
        .string "Informe um valor positivo."
.LC5:
        .string "A ordena\303\247\303\243o bit\303\264nica exige que a quantidade de elementos seja uma pot\303\252ncia de 2."
lerTamanhoVetor:
        addi    sp,sp,-32
        sd      ra,24(sp)
.L55:
        lla     a0,.LC2
        call    printf@plt
        addi    a1,sp,12
        lla     a0,.LC3
        call    __isoc23_scanf@plt
        lw      a5,12(sp)
        addiw   a4,a5,-1
        and     a4,a5,a4
        ble     a5,zero,.L61
        lla     a0,.LC5
        beq     a4,zero,.L59
        call    puts@plt
        j       .L55
.L59:
        ld      ra,24(sp)
        mv      a0,a5
        addi    sp,sp,32
        jr      ra
.L61:
        lla     a0,.LC4
        call    puts@plt
        j       .L55
.LC6:
        .base64 "RXJybyBkZSBhbG9jYcOnw6NvIGRlIG1lbcOzcmlhLgA="
.LC7:
        .string "Gerando %d elementos...\n"
gerarElementos:
        addi    sp,sp,-48
        sd      s1,24(sp)
        mv      s1,a0
        slli    a0,a0,2
        sd      ra,40(sp)
        sd      s0,32(sp)
        call    malloc@plt
        beq     a0,zero,.L65
        mv      s0,a0
        mv      a1,s1
        lla     a0,.LC7
        call    printf@plt
        mv      a1,sp
        lla     a0,gerarElementos._omp_fn.0
        li      a3,0
        li      a2,0
        sw      s1,8(sp)
        sd      s0,0(sp)
        call    GOMP_parallel@plt
        ld      ra,40(sp)
        mv      a0,s0
        ld      s0,32(sp)
        ld      s1,24(sp)
        addi    sp,sp,48
        jr      ra
.L65:
        lla     a0,.LC6
        call    puts@plt
        li      a0,1
        call    exit@plt
imprimeVetor:
        ble     a1,zero,.L71
        addi    sp,sp,-32
        sd      s1,8(sp)
        slli    s1,a1,2
        sd      s0,16(sp)
        sd      ra,24(sp)
        mv      s0,a0
        add     s1,a0,s1
.L68:
        lw      a1,0(s0)
        lla     a0,.LC1
        addi    s0,s0,4
        call    printf@plt
        bne     s0,s1,.L68
        ld      s0,16(sp)
        ld      ra,24(sp)
        ld      s1,8(sp)
        li      a0,10
        addi    sp,sp,32
        tail    putchar@plt
.L71:
        li      a0,10
        tail    putchar@plt
swap:
        lw      a4,0(a1)
        lw      a5,0(a0)
        sw      a4,0(a0)
        sw      a5,0(a1)
        ret
compareAndSwap:
        li      a5,1
        beq     a3,a5,.L79
        bne     a3,zero,.L75
        slli    a1,a1,2
        slli    a2,a2,2
        add     a1,a0,a1
        add     a0,a0,a2
        lw      a5,0(a1)
        lw      a4,0(a0)
        bge     a5,a4,.L75
.L77:
        sw      a4,0(a1)
        sw      a5,0(a0)
.L75:
        ret
.L79:
        slli    a1,a1,2
        slli    a2,a2,2
        add     a1,a0,a1
        add     a0,a0,a2
        lw      a5,0(a1)
        lw      a4,0(a0)
        bgt     a5,a4,.L77
        ret
bitonicMerge:
        li      a5,1
        bgt     a2,a5,.L85
        ret
.L85:
        mv      a5,a2
        li      a2,4096
        addi    a2,a2,-2047
        addi    sp,sp,-128
        sgt     a2,a5,a2
        mv      t3,a3
        mv      t1,a1
        mv      t4,a0
        sraiw   t5,a5,1
        addi    a1,sp,88
        xori    a2,a2,1
        li      a3,0
        lla     a0,bitonicMerge._omp_fn.0
        sd      ra,120(sp)
        sd      a5,40(sp)
        sw      t3,100(sp)
        sd      t3,72(sp)
        sw      t1,96(sp)
        sd      t1,64(sp)
        sd      t4,88(sp)
        sd      t4,32(sp)
        sw      t5,104(sp)
        sd      t5,24(sp)
        call    GOMP_parallel@plt
        ld      a5,40(sp)
        ld      t4,32(sp)
        ld      t5,24(sp)
        ld      t3,72(sp)
        ld      t1,64(sp)
        li      a4,1024
        sgt     a5,a5,a4
        addi    a1,sp,88
        sd      zero,8(sp)
        sd      zero,0(sp)
        li      a7,0
        li      a6,0
        li      a4,8
        li      a3,24
        li      a2,0
        lla     a0,bitonicMerge._omp_fn.1
        sd      a5,56(sp)
        sd      t4,88(sp)
        sd      t4,48(sp)
        sw      t5,104(sp)
        sd      t5,40(sp)
        sw      t3,100(sp)
        sd      t3,32(sp)
        sw      t1,96(sp)
        sd      t1,24(sp)
        call    GOMP_task@plt
        ld      t4,48(sp)
        ld      t5,40(sp)
        ld      t3,32(sp)
        ld      t1,24(sp)
        ld      a5,56(sp)
        sd      zero,8(sp)
        sd      zero,0(sp)
        addi    a1,sp,88
        li      a7,0
        li      a6,0
        li      a4,8
        li      a3,24
        li      a2,0
        lla     a0,bitonicMerge._omp_fn.2
        sd      t4,88(sp)
        sw      t5,104(sp)
        sw      t3,100(sp)
        sw      t1,96(sp)
        call    GOMP_task@plt
        ld      ra,120(sp)
        addi    sp,sp,128
        tail    GOMP_taskwait@plt
bitonicSort:
        li      a5,1
        bgt     a2,a5,.L88
        ret
.L88:
        tail    bitonicSort.part.2
main:
        addi    sp,sp,-48
        sd      ra,40(sp)
        sd      s0,32(sp)
        sd      s1,24(sp)
.L90:
        lla     a0,.LC2
        call    printf@plt
        mv      a1,sp
        lla     a0,.LC3
        call    __isoc23_scanf@plt
        lw      s0,0(sp)
        ble     s0,zero,.L98
        addiw   a5,s0,-1
        and     a5,s0,a5
        bne     a5,zero,.L93
        slli    a0,s0,2
        call    malloc@plt
        mv      s1,a0
        beq     a0,zero,.L99
        mv      a1,s0
        lla     a0,.LC7
        call    printf@plt
        mv      a1,sp
        li      a3,0
        li      a2,0
        lla     a0,gerarElementos._omp_fn.0
        sd      s1,0(sp)
        sw      s0,8(sp)
        call    GOMP_parallel@plt
        mv      a1,sp
        li      a3,0
        li      a2,0
        lla     a0,main._omp_fn.0
        sw      s0,8(sp)
        sd      s1,0(sp)
        call    GOMP_parallel@plt
        mv      a0,s1
        call    free@plt
        ld      ra,40(sp)
        ld      s0,32(sp)
        ld      s1,24(sp)
        li      a0,0
        addi    sp,sp,48
        jr      ra
.L93:
        lla     a0,.LC5
        call    puts@plt
        j       .L90
.L98:
        lla     a0,.LC4
        call    puts@plt
        j       .L90
.L99:
        lla     a0,.LC6
        call    puts@plt
        li      a0,1
        call    exit@plt