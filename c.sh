
aprobados=0
suspendidos=0

while read linea; do   
    nota=`echo $linea | awk {'print $3'}`
    if [ $nota != NOTA ] && [ $nota -ge 5 ];then
        ((aprobados++))
    elif [ $nota != NOTA ] && [ $nota -lt 5 ];then
        ((suspendidos++))
    fi
done < notas.txt

echo "El numero total de aprobados es: $aprobados"
echo "El numero total de suspendidos es: $suspendidos"