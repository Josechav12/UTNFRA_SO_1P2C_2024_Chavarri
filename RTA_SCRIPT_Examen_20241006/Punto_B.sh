#!/bin/bash

# Ingresaremos a la terminal, como usuario root
echo sudo su

# nombre del disco
DISCO="/dev/sdc"

# creamos las 10 particiones de 1GB
echo "creando particiones en $DISCO"

for i in {1..10}; do
    echo -e "n\np\n$i\n\n+1G\nw" | sudo fdisk $DISCO
done

# Formatear las particiones con ext4
echo "Formateando particiones con ext4"
for i in {1..10}; do
    sudo mkfs.ext4 "${DISCO}${i}"
done

# Montar las particiones en las carpetas correspondientes

# Montar particiones en alumno_1
sudo mount /dev/sdc1 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdc2 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdc3 /Examenes-UTN/alumno_1/parcial_3

# Montar particiones en alumno_2
sudo mount /dev/sdc4 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdc5 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdc6 /Examenes-UTN/alumno_2/parcial_3

# Montar particiones en alumno_3
sudo mount /dev/sdc7 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdc8 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdc9 /Examenes-UTN/alumno_3/parcial_3

# Montar particiones en profesores
sudo mount /dev/sdc10 /Examenes-UTN/profesores




