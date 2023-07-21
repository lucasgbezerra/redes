#!/bin/bash

# Obter o nome do usuário da pasta atual
USER_NAME=$(whoami)

# Criar um arquivo HTML com o nome do usuário
echo "<html><head><title>Nome do Usuário</title></head><body><h1>O nome do usuário é: $USER_NAME</h1></body></html>" > user.html
