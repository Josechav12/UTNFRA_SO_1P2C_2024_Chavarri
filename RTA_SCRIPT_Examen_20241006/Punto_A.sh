Punto A:
#comando unico para crear la estructura

mkdir -p /Examenes-UTN/{alumno_{1,2,3}/parcial_{1,2,3},profesores}

mkdir -p #comando que crea los directorios

/Examenes-UTN/{alumno_{1,2,3} #expresion que crea las carpetas.

/parcial_{1..3} #expresion que crea los subdirectorios.

,profesores #crea la carpeta al mismo nivel que la de los alumnos.
