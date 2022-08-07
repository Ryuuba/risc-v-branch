# Compilación de una asignación condicional. Modifica el valor de a para 
# observar el flujo de ejecución.
# int a = 3000, b = ((4098*a) % 10 < 5) ? 8190*a : -8190*a;
# s1 <-> a, s2 <-> b
        lui  s1, 0x00001
        addi s1, s1, -1091
        slli t0, s1, 11
        add  t0, s1, t0
        slli t0, t0, 1
        addi t1, zero, 10
        rem  t0, t0, t1
        addi t1, zero, 5
        bge  t0, t1, L1
        slli t0, s1, 12
        sub  t0, t0, s1
        slli s2, t0, 1
        j    L2
L1:     slli t0, s1, 12
        sub  t0, s1, t0
        slli s2, t0, 1     
L2:     nop