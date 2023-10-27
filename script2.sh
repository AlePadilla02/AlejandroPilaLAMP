echo "Actualizando el sistema e instalando Mariadb-server..."

apt update
apt upgrade
apt install -y mariadb-server-10.3

echo "Instalado con exito MariaDB"

echo "Eliminando la ruta por defecto..."

sudo ip route del default 

echo "Eliminado el acceso a internet."