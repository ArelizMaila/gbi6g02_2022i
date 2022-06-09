#! /bin/bash

#Para leer el archivo data_INFg.txt
#Para buscar uso el comando grep

grep "complete cds" ../data/data_INFg.txt | wc > ./grep/cds_full.txt

grep "linear DNA" ../data/data_INFg.txt | wc >> ./grep/linear_dna.txt

grep  "pb" ../data/data_INFg.txt |cut -d " " -f 1 | sort >> ./grep/pb.txt
