dpkg-reconfigure postfix

/etc/init.d/postfix start

adduser dafnem
adduser lucasg

# usermod -aG sudo dafnem #dafne root
# usermod -aG sudo dafnem
passw #definir senha para o root

su - dafnem #troca para o usuario dafne

echo "Este e apenas um email de teste" | mail -s "Email de teste" lucasg
echo "Este e apenas um email de teste 2" | mail -s "Email de teste 2" lucasg@mail.lumidouble.com
su - lucas
mail
# mail dafnem@lumidoublemailserver.com 