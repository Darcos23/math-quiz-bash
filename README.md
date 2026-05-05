# Quiz Matemático en Bash

Script en Bash que implementa un quiz matemático interactivo desde la terminal y permite resolver problemas de suma, resta, multiplicación y división mediante un menú principal.

## Integrantes

+ Daniel Esteban Arcos Cerón  [A00400760]
+ Karold Lizeth Mejia Orozco  [A00401806]
+ Johan Stiven Suarez Perdomo [A00404253]

## Descripción

El programa muestra un menú con las siguientes opciones:

1. Problemas de suma  
2. Problemas de resta  
3. Problemas de multiplicación  
4. Problemas de división  
9. Salir  

Cada problema se genera con números aleatorios y el usuario tiene hasta tres intentos para responder correctamente. Si acierta, el programa muestra un mensaje de felicitación y regresa al menú principal. Si falla en los tres intentos, se muestra la respuesta correcta y luego se vuelve al menú.

## Ejecución

Para ejecutar el programa, usar el siguiente comando en la terminal:

```bash
bash math_quiz.sh
```