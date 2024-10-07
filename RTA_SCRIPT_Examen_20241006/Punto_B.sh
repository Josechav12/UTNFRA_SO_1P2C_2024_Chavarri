#!/bin/bash

# Ingresaremos a la terminal, como usuario root
echo sudo su

# nombre del disco
DISCO="/dev/sdc"

# creamos las 10 particiones de 1GB
echo "creando particiones en $DISCO...

(echo n

echo p

for i in $(seq 1 10);do
	echo $i
	echo +1G
done
echo w
) | sudo fdisk "$DISCO"
"
# Función para formatear las particiones
for i in $(seq 1 $PARTICIONES); do
	echo "Formateando /dev/sdc$i como ext4..."
        sudo mkfs.ext4 "/dev/sdc$i"
done

#funcion para montar particiones 

