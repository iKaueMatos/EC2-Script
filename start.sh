#!/bin/bash
apt-get update -y
apt-get upgrade -y

apt-get install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update -y
apt-get install -y docker-ce

usermod -aG docker $USER

curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
apt-get install -y nodejs

docker --version
docker-compose --version
node --version
npm --version

npm install -g pm2

echo "<html><body><h1>Bem-vindo ao meu servidor com Docker e Node.js!</h1></body></html>" > /var/www/html/index.html

echo "Configuração concluída!"
