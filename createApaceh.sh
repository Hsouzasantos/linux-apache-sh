#!/bin/bash 

echo "Atualizando o servidor"

sudo apt update -y && sudo apt upgrade -y

echo "Instalando o apache2"

sudo apt install apache2 -y

echo "Instalando o unzip"

sudo apt install unzip -y

echo "Movendo para pasta padrao do apache"

cd /disk2/public

echo "Removendo index.html padrao do apache2"

sudo rm /var/www/html/index.html

echo "Baixando Projeto do github"

sudo git clone git@github.com:Hsouzasantos/Finder-github.git
cd /Finder-github/src

echo "Copiar os arquivos para a pasta padrão"

sudo cp -r /disk2/public/Finder-github/src/* /var/www/html