#!/bin/bash

# SCRIPT: QUIZ MATEMÁTICO EN BASH (Bourne Again Shell)

# FUNCIONES:

# Función reutilizable para realizar una pregunta al usuario
# y validar su respuesta (permite solo tres intentos).

preguntar()
{
    typeset pregunta respuesta
    typeset -i resultado intento

    intento=1
    pregunta="$1"
    resultado=$2

    while (( intento <= 3 ))
    do
        echo -n "$pregunta "
        read respuesta

        if (( respuesta == resultado ))
        then
            echo "¡Correcto! Bien hecho."
            return
        else
            if (( intento < 3 ))
            then
                echo "Incorrecto. Inténtalo de nuevo."
            fi
        fi
        (( intento = intento + 1 ))
    done

    echo "Se acabaron los intentos. La respuesta correcta era $resultado."
}

# Problemas de suma:

suma()
{
    typeset -i a b resultado
    
    (( a = RANDOM % 101 ))
    (( b = RANDOM % 101 ))
    (( resultado = a + b ))
    
    preguntar "¿Cuánto es $a + $b?" $resultado
}

# Problemas de resta:

resta()
{
    typeset -i a b resultado temp

    (( a = RANDOM % 101 ))
    (( b = RANDOM % 101 ))

    # Asegurar resultado positivo
    if (( a < b )); then
        temp=$a
        a=$b
        b=$temp
    fi

    (( resultado = a - b ))

    preguntar "¿Cuánto es $a - $b?" $resultado
}

# Problemas de multiplicación:

multiplicacion()
{
    typeset -i a b resultado

    (( a = RANDOM % 100 + 1 ))
    (( b = RANDOM % 10 + 1 ))
    (( resultado = a * b ))

    preguntar "¿Cuánto es $a * $b?" $resultado
}

# Problemas de división:

division()
{
    typeset -i a b resultado

    (( a = RANDOM % 20 + 1 ))
    (( b = RANDOM % 10 + 1 ))
    (( resultado = a ))
    (( a = a * b )) 

    preguntar "¿Cuánto es $a / $b?" $resultado
}

# CUERPO PRINCIPAL DEL PROGRAMA:

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
            suma;;
        2)
            resta;;
        3)
            multiplicacion;;
        4)
            division;;
        9)
            echo "¡Hasta luego!"
            break;;
        *)
            echo "Opción inválida. Digite nuevamente.";;
    esac
done