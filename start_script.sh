#!/bin/bash
sudo apt-get install git
sudo apt install python3-pip
echo 'dbt ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
# Pobierz najnowszą wersję Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Nadaj uprawnienia wykonywania do pliku binarnego
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker ec2-user
sudo apt install python3.10-venv


ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub