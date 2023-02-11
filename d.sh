#!/bin/bash

#### d.- Haz un script que se llame d.sh, que calcule la califiación (Suspendido, Aprobado o Sobresaliente) de una nota numérica que le paso por parámetro. Comitea, integra en master y sube a GitHub

nota=$1

if [ $nota -ge 9 ]
then
    echo "Has sacado un sobresaliente"
elif [ $nota -lt 9 ] && [ $nota -ge 5 ]
then
    echo "Has aprobado"
else
    echo "Has suspendido"
fi
