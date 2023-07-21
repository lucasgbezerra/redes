# Cria os diretórios
mkdir -p /var/www/html/lucas
mkdir -p /var/www/html/boaventura
mkdir -p /var/www/html/dafne
mkdir -p /var/www/html/davi

echo "<html><body><h1>Welcome to Lucas's Report</h1></body></html>" > /var/www/html/lucas/index.html
echo "<html><body><h1>Welcome to Boaventura's Report</h1></body></html>" > /var/www/html/boaventura/index.html
echo "<html><body><h1>Welcome to Dafne's Report</h1></body></html>" > /var/www/html/dafne/index.html
echo "<html><body><h1>Welcome to Davi's Report</h1></body></html>" > /var/www/html/davi/index.html

echo /etc/apache2/sites-available/lucas.conf < "<VirtualHost *:80>
    ServerName lucas.lumidouble.com
    DocumentRoot /var/www/html/lucas
</VirtualHost>
"

echo /etc/apache2/sites-available/boaventura.conf < "<VirtualHost *:80>
    ServerName boaventura.lumidouble.com
    DocumentRoot /var/www/html/boaventura
</VirtualHost>
"

echo /etc/apache2/sites-available/dafne.conf < "<VirtualHost *:80>
    ServerName dafne.lumidouble.com
    DocumentRoot /var/www/html/dafne
</VirtualHost>
"

echo /etc/apache2/sites-available/davi.conf < "<VirtualHost *:80>
    ServerName davi.lumidouble.com
    DocumentRoot /var/www/html/davi
</VirtualHost>
"

a2ensite lucas.conf
a2ensite boaventura.conf
a2ensite dafne.conf
a2ensite davi.conf
service apache2 restart
