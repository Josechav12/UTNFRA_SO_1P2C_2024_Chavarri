# entramos al archivo RTA_ARCHIVOS_Examen_20240928/
cd /repogit/RTA_ARCHIVOS_Examen_20240928/

# creamos el archivo .txt si no existe
touch Filtro_Basico.txt

# extraemos la informacion de la memoria
echo "Actualizando información de la memoria RAM"
grep MemTotal /proc/meminfo > Filtro_Basico.txt

# Extraer la información del fabricante del chassis
sudo dmidecode -t chassis | grep "Manufacturer:" >> Filtro_Basico.txt




