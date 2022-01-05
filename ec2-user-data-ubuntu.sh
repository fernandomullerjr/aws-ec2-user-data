#!/bin/bash
# Funcionando para o Ubuntu20.
# Instalado o Stress e o AWS CLI também.
apt update -y
sudo snap install stress-ng -y
sudo apt  install awscli -y
mkdir /teste
touch /teste/teste.txt
echo “testando” > /teste/teste.txt
chmod -R 777 /teste
