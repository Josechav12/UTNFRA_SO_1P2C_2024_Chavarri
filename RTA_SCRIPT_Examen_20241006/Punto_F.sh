# nos ubicamos en la ruta asignada y generamos el archivo .txt
cd /repogit/UTNFRA_SO_1P2C_2024_Chavarri/RTA_ARCHIVOS_Examen_20241006
touch Filtro_Avanzado.txt

# Variables:
# obtenemos la IP.
IP_Publica=$(curl -s ifconfig.me)

# nombre del usuario actual.
User=$(whoami)

# hash del usuario.
HASH_user=$(sudo grep vagrant /etc/shadow)

# URL del repositorio remoto.
Git_repo=$(git remote get-url origin)

#informacion en el archivo .txt
echo "Mi IP Publica es: $IP_Publica" > Filtro_Avanzado.txt
echo "Mi Usuario es: $User" > Filtro_Avanzado.txt
echo "El Hash de mi usuario es: $HASH_user" > Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $Git_repo" > Filtro_Avanzado.txt

# mostramos el contenido
cat Filtro_Avanzado.txt
