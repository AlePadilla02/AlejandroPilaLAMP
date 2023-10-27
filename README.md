# AlejandroPilaLAMP

# Índice
1. [Introducción](#introducción)
2. [Configuración de la máquina Apache](#configuración-de-la-máquina-apache)
   - [Instalación de Apache y PhP](#instalación-de-apache-y-php)
   - [Configuración de Apache y PhP](#configuración-de-apache-y-php)
3. [Configuración de la máquina MariaDB](#configuración-de-la-máquina-mariadb)
   - [Instalación de MariaDB](#instalación-de-mariadb)
4. [Resultado](#resultado)

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
#### Una vez realizado todo, debemos reiniciar el servicio apache:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/7019d818-91ec-4c12-b3c5-680c0f81f796)
#### Y ahora comprobamos que han surtido efecto los cambios accediendo desde nuestra máquina física:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/2afeb4e3-fc80-406a-b3cc-1206a99226d6)

## Configuración de la máquina MariaDB:
### Instalación de MariaDB:
#### Al igual que la instalación de Apache y PhP, realizaremos dicha instalación con un script el cual contiene el siguiente código detallado por un echo, además de eliminar la ruta por defecto para que no tenga salida a internet:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/11f9ffbe-ba41-4d81-ba9c-4903f0dcb129)

### Configuración de MariaDB:
#### Comprobamos que se ha instalado y esta en funcionamiento MariaDB:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/29283131-02a2-49f0-8762-4d44a33f1f3c)

#### Ahora procederemos a añadir un usuario a la base de datos y otorgarle los permisos:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/0e89464d-f781-42a3-bca1-8b5777bfb5de)
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/71121b19-1208-4e75-9820-871294097834)

#### Deberemos editar el fichero 50-server.cnf en la ruta /etc/mysql/mariadb.conf.d y añadir la dirección IP de nuestro SGDB en bind-address para permitir acceso a nuestra base de datos al usuario creado:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/f19b6d53-85db-4883-8e46-42f94124c2f3)

#### Por último quedaría clonar el repositorio de la base de datos a través de una carpeta compartida, debido a que no tiene salida a internet y hacer sus respectivas modificaciones como el servidor Apache:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/8a095798-e211-4d71-ae1f-960cf53a115e)

## Resultado:
#### Tenemos aquí el resultado de como iniciamos sesion desde la máquina Apache a la base de datos habiendo configurado previamente el fichero config.php de la carpeta src:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/f37ed568-2714-440e-9f87-fb539d6846e7)
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/e734940e-2b43-41ec-aa2c-3034f16a998b)

#### Comprobamos que funciona agregar datos:
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/0ef57923-cb13-41fe-8535-527aca7c557a)
![image](https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/0aba8076-4946-48a0-aac9-2a212ba04b80)

#### Aquí está el vídeo donde se prueba que funciona ambos servidores y recogen datos.
https://github.com/AlePadilla02/AlejandroPilaLAMP/assets/146703765/d65774b1-e499-47b4-bc43-13f925ca6e37























