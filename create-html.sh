html_content="<html>
<head>
  <title>Página da nossa empresa fictítia</title>
</head>
<body>
  <h1>Esta é a página da nossa empresa fictícia</h1>
  <p>Bem-vindo à Lumidouble</p>
</body>
</html>"

echo "$html_content" > /var/www/html/teste.html

chmod 644 /var/www/html/teste.html

echo "Página teste.html criada com sucesso em /var/www/html!"