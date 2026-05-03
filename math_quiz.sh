#!/bin/bash

# SCRIPT: QUIZ MATEMÁTICO EN BASH (Bourne Again Shell)

# Funciones:



# Cuerpo principal del programa:

typeset opcion

while true
do
    echo
    echo "QUIZ MATEMÁTICO"
    echo "1) Problemas de suma"
    echo "2) Problemas de resta"
    echo "3) Problemas de multiplicación"
    echo "4) Problemas de división"
    echo "9) Salir"
    echo -n "Elige una opción: "
    read opcion

    case $opcion in
        1)
            echo "Falta por implementar...";;
        2)
            echo "Falta por implementar...";;
        3)
            echo "Falta por implementar...";;
        4)
            echo "Falta por implementar...";;
        9)
            echo "¡Hasta luego!"
            break;;
        *)
            echo "Opción inválida. Digite nuevamente.";;
    esac
done