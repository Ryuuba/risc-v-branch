# Compilación de un bloque de control if usando las instrucciones bne y j, así 
# como la etiqueta L1. Modifica el valor de a para observar el flujo de 
# ejecución.
# int a = 0;
# if (a == 0)
#     a++;
# s1 <-> a
        add  s1, zero, zero
        bne  s1, zero, L1
        addi s1, s1, 1
L1:     nop