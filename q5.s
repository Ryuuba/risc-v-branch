# Compilación de una asignación condicional compleja. Modifica el valor de sel 
# para observar el flujo de ejecución.
# int sel = 0;
# int a = (sel == 0) ? 0xFFFFFFFF
#       : (sel == 1) ? 0x00010ADF
#       : (sel == 2) ? 0xFFFFFAAA
#       : (sel == 3) ? 0xF0000AAA
#       : (sel == 4) ? 0x0000F000
#       : 0xF0000111;
# s1 <-> sel, s2 <-> a
        addi s1, zero, 5
        bne  s1, zero, L1
        addi s2, zero, -1
        j    L2
L1:     addi t0, zero, 1
        bne  s1, t0, L3
        lui  s2, 0x00011
        addi s2, s2, 0xFFFFFADF
        j    L2
L3:     addi t0, zero, 2
        bne  s1, t0, L4
        addi s2, zero, -1366
        j    L2
L4:     addi t0, zero, 3
        bne  s1, t0, L5
        lui  s2, 0xF0001
        addi s2, s2, 0xFFFFFAAA
        j    L2
L5:     addi t0, zero, 4
        bne  s1, t0, L6
        lui  s2, 0x0000F
        j    L2
L6:     lui  s2, 0xF0000
        addi s2, s2, 0x111
L2:     nop

