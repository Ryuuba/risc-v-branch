# A11: Compilación de bloques condicionales

Los siguientes problemas se resuelven empleando instrucciones y pseudoinstruccioes de bifurcación. Para hacer la traducción de un bloque condicional escrito en alto nivel a ensamblador, debe usarse la instrucción en ensamblador que corresponda al complemento del operador relacional usado en alto nivel para determinar la condición de salto. Esta regla es válida siempre que la condición del bloque use un único operador relacional y no operadores booleanos.

## Relación entre los operadores relacionales y las instrucciones de bifurcación

| C++         | RISC-V      |
| ----------- | ----------- |
| ==          | bne         |
| !=          | beq         |
| <           | bge         |
| >=          | blt         |
| >           | ble         |
| <=          | bgt         |

## Problemas

1. Compilación de un bloque de control *if* usando las instrucciones `bne` y `j`, así como la etiqueta `L1`. Modifica el valor de a para observar el flujo de ejecución.

```C++
int a = 0;
if (a == 0)
    a++;
```

2. Compilación de un bloque control *if*, *else* usando la instrucción `bgt` y `j`, así como dos etiquetas `L1` y `L2`. Modifica el valor de `a` para observar el flujo de ejecución.

```C++
if (a <= 0)
    a++;
else
    a--;
```

3. Compilación de un bloque *if*, *else*-*if*, else usando las instrucciones `beq`, `ble` y `j`, así como tres etiquetas `L1`, `L2` y `L3`. Modifica el valor de `a` para observar el flujo de ejecución. 

```C++
int a = 0;
if (a != 0)
    a--;
else if (a > 0)
    a = 0;
else
    a++;
```

1. Compilación de una asignación condicional. Modifica el valor de `a` para observar el flujo de ejecución.

```C++
int a = 3000, b = ((4098*a) % 10 < 5) ? 8190*a : -8190*a;
```

5. Compilación de una asignación condicional compleja. Modifica el valor de `sel` para observar el flujo de ejecución.

```C++
int sel = 0;
int a = (sel == 0) ? 0xFFFFFFFF
      : (sel == 1) ? 0x00010ADF
      : (sel == 2) ? 0xFFFFFAAA
      : (sel == 3) ? 0xF0000AAA
      : (sel == 4) ? 0x0000F000
      : 0xF0000111;
```

6. Conversión del código del punto seis a otro equivalente, en alto nivel, que use un bloque switch.