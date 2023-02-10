#!/bin/bash

echo "Introduzca el numero de llamadas: "
read numeroLlamadas

if [ $numeroLlamadas -gt 15 ];then
    echo "La tarifa que mas le conviene es la tarifa 1, pagarías 100 €"
elif [ $numeroLlamadas -le 15 ] && [ $numeroLlamadas -ge 10 ];then
    importeFijo=50
    importeTotal=$(($importeFijo + $numeroLlamadas ))
    echo "La tarifa que más le conviene es la tarifa 2 puesto que le cobraríamos un total de $importeTotal €"
else
    importeFijo=20
    importeTotal=$(($importeFijo + ($numeroLlamadas * 2) ))
    echo "La tarifa que más le conviene es la tarifa 2 puesto que le cobraríamos un total de $importeTotal €"
fi