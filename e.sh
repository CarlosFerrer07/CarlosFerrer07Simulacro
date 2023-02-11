#### e.- Haz un script que se llame e.sh, que pasándole por parámetro un nombre y un módulo me devuelve la calificación. Es obligatorio reutilizar el script anterior. Comitea, integra en master y sube a GitHub
nombre=$1
modulo=$2

nota=`cat notas.txt | grep $1 | grep $2 | awk {'print $3'}`

if [ $nota -ge 9 ]
then
    echo "Has sacado un sobresaliente"
elif [ $nota -lt 9 ] && [ $nota -ge 5 ]
then
    echo "Has aprobado"
else
    echo "Has suspendido"
fi