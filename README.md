# Trabalho 2 de REDES

# Rodar
```bash
docker-compose up -d
```

# Acessar o terminal dos containers

```bash
sudo docker exec -it redes-dns-server-1 bash
```

```bash
docker exec -it redes-dns-server-1 bash
```

# Configurar servidor DNS

O servidor DNS já é configurado com o docker-compose

# Configurar o servidor de email

Rode o arquivo de configuração do postfix

```bash
./setup.postfix
```

# Configurar servidor Web

Primeiro, rode o script que configura o apache

```bash
./setup-apache2.sh
```

Depois, execute o script que cria a página html

```bash
./create-html.sh
```

Caso tenha problemas de permissão

```bash
chmod 777 setup-apache2.sh
```