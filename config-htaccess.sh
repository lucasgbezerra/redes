
# Altera as permissões da pasta /home/*/public_html
echo "<VirtualHost *:80>
    ServerName example.com
    ServerAlias www.example.com

    DocumentRoot /var/www/html

    <IfModule mod_userdir.c>
        UserDir public_html
        UserDir disabled root

        <Directory /home/*/public_html>
            AllowOverride All                              
            Options MultiViews Indexes SymLinksIfOwnerMatch IncludesNoExec
            Require all granted            
        </Directory>
    </IfModule>
</VirtualHost>" >  /etc/apache2/sites-available/userdir.conf 

# Altera as permissões da pasta /var/www no /etc/apache2/apache2.conf
# <Directory /var/www/>
#         Options Indexes FollowSymLinks
#         AllowOverride All
#         Require all granted
# </Directory>


# Reinicia o apache
service apache2 restart

# Cria o arquivo .htaccess
echo "# Allow the owner of the directory to read, write, and execute
Options +Indexes
Require all granted
Order allow,deny
Allow from all

# Restrict access to others, only allowing read access
Require user lucas
Satisfy any
" > /home/lucas/public_html/.htaccess
# Define as permissões
chmod 755 /home/lucas/public_html
chmod 644 /home/lucas/public_html/.htaccess
# Reinicia o apache
service apache2 restart


