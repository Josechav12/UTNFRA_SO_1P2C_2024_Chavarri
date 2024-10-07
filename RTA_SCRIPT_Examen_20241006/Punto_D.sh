#!/bin/bash

# Crear la estructura de directorios
echo "Creando la estructura de directorios..."
mkdir -p /Estructura_Asimetrica/correo
mkdir -p /Estructura_Asimetrica/clientes

# Crear archivos cartas_ del 1 al 100 en ambas carpetas
echo "Creando archivos cartas_ en ambas carpetas..."
for i in {1..100}; do
    Estructura_Asimetrica/correo/cartas_$i
    Estructura_Asimetrica/clientes/cartas_$i
done

# Crear archivos carteros_ del 1 al 10 solo en la carpeta correo
echo "Creando archivos carteros_ en la carpeta correo..."
for i in {1..10}; do
    /Estructura_Asimetrica/correo/carteros_$i
done


