#!/bin/bash

echo "Atualizando Sistema..."

apt-get update -y
apt-get upgrade -y

echo "Instalando Aplicativos..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando Diretório em Endereço Externo..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando Pacote Zip..."
unzip main.zip
cd linux-site-dio-main

echo "Copiando Arquivos para Pasta Apache..."
cp -R * /var/www/html/
