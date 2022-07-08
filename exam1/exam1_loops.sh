#! /bin/bash

## Tomar y copiar todos los archivos que terminan en 1 de la carpeta multi

cp ../data/multi/*1.txt ./multi_copia


##  Para hacer la pregunta 3 de examen se necesita el siguiente codigo 

for f in ./multi_copia/*.txt
do
## el codigo a continuacion sirve para contar, primero elige la fila 1 y borra los espacios

        x=$( head -n1 "$f" |grep -o " " | wc -l )

## Con el siguiente codigo se puede contar a los pares o impares y se colocan los delimitantes

        if [ $(( "x" % 2 )) -eq 0 ];
        then
                echo "Par: $f tiene $x columnas" >> for_if.txt
        else
                echo "Impar: $f tiene $x columnas"  >> for_if.txt
        fi

done

## Al final los resultados se guardan en el archivo txt llamado for_if.txt

