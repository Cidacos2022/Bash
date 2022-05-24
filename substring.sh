#!/bin/bash

#Aqui tenemos el substring, hay que utilizar indices (cuidado que empieza en 0)
STR="0123Linux9"
echo ${STR:4:2}
#Cogemos a partir del caracter posicionado en la posicion cuatro que sería 
#el caracter 3 y cogemos 2 caracteres (li)


echo ${STR:0:6}
#Cogemos los 6 primeros


echo ${STR:0:6}
#Cogemos los 6 primeros



#Por ejemplo para obtener indices
t="abcdefhg"
searchstring="ef"

rest=${t#*$searchstring}
echo "Tamaño total" $(( ${#t})) #
echo "Cuantos caracteres quedan despues de encontrar el string (hg)" $(( ${#rest} )) #Tamaño total
echo "Tamaño del string que buscamos " $(( ${#searchstring} ))
echo "Donde empieza el string" $(( ${#t} - ${#rest} - ${#searchstring} ))
echo "Hacemos el substring ${t:${#t} - ${#rest} - ${#searchstring}:${#searchstring}}"