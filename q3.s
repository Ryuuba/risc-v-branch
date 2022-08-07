# Compilación de un bloque if, else-if, else usando las instrucciones beq, ble y 
# j, así como tres etiquetas L1, L2 y L3. Modifica el valor de a para observar 
# el flujo de ejecución. 
# int a = 0;
# if (a != 0)
#     a--;
# else if (a > 0)
#     a = 0;
# else
#     a++;
# s1 <-> a
        and  s1, zero, zero
        addi t0, zero, -1
        beq  s1, t0, L1
        addi s1, s1, -1
        j    L2
L1:     lui  t0, 0x00001
        ble  s1, t0, L3
        or   s1, zero, zero
        j    L2
L3:     addi s1, s1, 1
L2:     nop