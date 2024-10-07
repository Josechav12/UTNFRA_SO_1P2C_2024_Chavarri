# Crear grupos
echo "Creando grupos..."
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

# crear usuarios con grupos secundarios y clave
echo "Creando usuarios..."
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1

#ajustar permisos
#para alumno 1:El dueño puede hacer todo, el grupo puede Leer y ejecutar, Los demás usuarios no pueden hacer nada
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1

# Para alumno_2:Dueño = rwx, Grupo = rw-, otros = - - -
sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod 760 /Examenes-UTN/alumno_2

# Para alumno_3: dueño puede hacer todo, gurpo y otros no pueden hacer nada
sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3

# Para profesores: dueño y grupo pueden hacer todo, otros pueden leer y ejecutar
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 775 /Examenes-UTN/profesores

# Crear los archivos validar.txt con whoami
echo "Creando archivos de validación..."

# Para alumno_1
sudo -u p1c2_2024_A1 bash -c 'whoami > /Examenes-UTN/alumno_1/validar.txt'

# Para alumno_2
sudo -u p1c2_2024_A2 bash -c 'whoami > /Examenes-UTN/alumno_2/validar.txt'

# Para alumno_3
sudo -u p1c2_2024_A3 bash -c 'whoami > /Examenes-UTN/alumno_3/validar.txt'

# Para profesores
sudo -u p1c2_2024_P1 bash -c 'whoami > /Examenes-UTN/profesores/validar.txt'

