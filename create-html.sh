html_content="<html>
<head>
  <title>Página de Teste</title>
</head>
<body>
  <h1>Esta é uma página de teste</h1>
  <p>Bem-vindo à página de teste!</p>
</body>
</html>"

echo "$html_content" > /var/www/html/teste.html

chmod 644 /var/www/html/teste.html

echo "Página teste.html criada com sucesso em /var/www/html!"