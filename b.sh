#!/bin/bash

nombreFichero=notas.txt

lineasTotales=`cat $nombreFichero | wc -l`

matriculas=$(($lineasTotales - 1))

echo "El numero total de matrículas es: $matriculas"
