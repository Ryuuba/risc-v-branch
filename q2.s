# Compilación de un bloque control if, else usando la instrucción bgt y j, así 
# como dos etiquetas L1 y L2. Modifica el valor de a para observar el flujo de 
# ejecución.
# int a = 0;
# if (a <= 0)
#     a++;
# else
#     a--;
# s1 <-> a
        xor  s1, s1, s1
        bgt  s1, zero, L1
        addi s1, s1, 1
        j    L2
L1:     addi s1, s1, -1
L2:     nop