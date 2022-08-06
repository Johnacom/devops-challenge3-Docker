# Solución

A continuación se presenta las imágenes de la solución

### Pantallazo 1

Se crea contenedor con iamgen mariadb y estableciendo las variables de entorno.
![Creacion contenedor](./images/conexion_db_consola.png)

### Pantallazo 2

Error al conectarse a la DB desde el gesto DBeaver, producido por no exponer el puerto 3206.
![Creacion contenedor](./images/error_conexion.png)

Se corrige error y se conecta de manera exitosa con user invitada a la DB prueba.
![Acceso web server](./images/conexion_db_correcta.png)

### Pantallazo 3

Imágenes en registro local.
![Creacion contenedor](./images/images_registry_local.png)

### Pantallazo 4

Erro al querer eliminar imagen cuando esta siendo ejecutada por un contenedor
![Creacion contenedor](./images/error_eliminar_imagen.png)