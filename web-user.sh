a2enmod userdir #habilita o modulo userdir
adduser lucas #cria o usuario lucas
mkdir /home/lucas/public_html #cria a pasta public_html
chown -R lucas:lucas /home/lucas/public_html #altera o dono da pasta public_html
chmod -R 755 /home/lucas/public_html   #altera as permissoes da pasta public_html

# Cria as configurações do userdir
echo "<VirtualHost *:80>
    ServerName example.com
    ServerAlias www.example.com

    DocumentRoot /var/www/html

    <IfModule mod_userdir.c>
        UserDir public_html
        UserDir disabled root

        <Directory /home/*/public_html>
            AllowOverride FileInfo AuthConfig Limit Indexes
            Options MultiViews Indexes SymLinksIfOwnerMatch IncludesNoExec
            Require method GET POST OPTIONS
        </Directory>
    </IfModule>
</VirtualHost>" > /etc/apache2/sites-available/userdir.conf 

a2ensite userdir.conf # Habilita o site
# Cria o arquivo user.html
echo "<html><head><title>Nome do Usuário</title></head><body><h1>O nome do usuário é: Lucas</h1></body></html>" > /home/lucas/public_html/user.html

# Define as permissões
chmod 755 /home/lucas
chmod 755 /home/lucas/public_html
chmod 644 /home/lucas/public_html/user.html

service apache2 restart # Reinicia o apache 