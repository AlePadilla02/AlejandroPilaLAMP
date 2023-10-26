# AlejandroPilaLAMP

# Índice
1. [Introducción](#introducción)
2. [Configuración de la máquina Apache](#configuración-de-la-máquina-apache)
   - [Instalación de Apache y PhP](#instalación-de-apache-y-php)

## Introducción:
### En esta práctica realizaremos el lanzamiento de dos máquinas virtuales, donde una de ellas contendrá Apache y PHP con salida a internet, y la otra contendrá MariaDB sin salida a internet.


## Configuración de la máquina Apache:

### Instalación de Apache y PhP:
#### Con un scrip realizaremos dicha instalación, el cual contiene el siguiente código detallado por un echo. Además, también se ha de instalar el paquete git:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/a3611916-453e-4099-aa0a-01f9c984c08a)


#### Cabe recordar, en el fichero Vagrantfile se debe modificar de tal manera que pueda ejecutarse dicho script a la hora de aprovisionar:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/3f9a73c2-1ef4-40de-9093-7e7a6a919a17)

### Configuración de Apache y PhP:
#### Una vez realizado con éxito la instalación de Apache y PhP, procedemos a comprobar si se ha ejecutado correctamente el aprovisionamiento:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/709ef2a5-1eec-452f-bef1-8444b10f3486)

#### Comprobamos que funciona el reenvío de puertos detallado en el Vagrantfile y para ver si realmente está en funcionamiento el servidor Apache:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/911b9be3-aadc-4ee8-a595-52a1a137e120)

#### Una vez comprobado el funcionamiento de Apache y el reenvío de puertos, nos iremos al directorio /var/www/html y crearemos el fichero info.php:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/434845c7-492a-48ba-a90e-a6cb7f492e1d)

#### Creado dicho fichero, comprobamos que funciona PhP añadiendo la ruta en localhost:(puerto)/info.php
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/f1597afd-2e8f-49d3-b82d-762785061e0e)

#### Por último quedaria hacer la clonación del repositorio donde contiene dicha base de datos y modificar tanto el nombre del repositorio además de cambiar la ruta de DocumentRoot del fichero 000-default.conf que se encuentra en /etc/apache2/sites-available/:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/21339330-cd1f-4b22-b8b9-f67b376acbc0)
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/8a13e583-70b4-4710-80c8-d7ba40391659)
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/a8bcae02-2213-40e6-91cf-988d979e02fd)








