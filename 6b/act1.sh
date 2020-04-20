if [ $# -ne 1 ]
then
    echo "Error.Se requiere un valor por parametro"
    exit

fi

if [ $1 -lt 1 ]
then
    echo "Introduce un numero mayor que 1"
    exit
fi

for i in $(cat nombre.txt);do
    mkdir $i
    cd $i
    for i in $((seq 1 $1));do
	mkdir personal${i}
    done
    cd ..
done
