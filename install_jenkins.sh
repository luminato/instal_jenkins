#!/bin/bash

# Atualiza os repositórios
sudo apt update

# Instala o Java 11
sudo apt install -y openjdk-11-jdk

# Adiciona o repositório do Jenkins à lista de fontes de software
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "deb https://pkg.jenkins.io/debian-stable binary/" | sudo tee -a /etc/apt/sources.list.d/jenkins.list

# Atualiza os repositórios novamente
sudo apt update

# Instala o Jenkins
sudo apt install -y jenkins

# Inicia o Jenkins
sudo systemctl start jenkins

# Habilita o Jenkins para iniciar com o sistema
sudo systemctl enable jenkins

# Mostra a senha inicial do Jenkins
echo "Senha inicial do Jenkins:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
