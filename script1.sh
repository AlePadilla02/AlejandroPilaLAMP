echo "Actualizando el sistema e instalando Apache2..."
    
apt update
apt upgrade
apt install -y apache2
echo "Instalado con éxito Apache2"

echo "Instalando PHP..."
apt install -y php libapache2-mod-php php-mysql
echo "Instalado con éxito PHP."

echo "Instalando"

echo "Instalando paquete git..."
apt install -y git

echo "Instalado git."