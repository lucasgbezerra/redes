dpkg-reconfigure postfix

/etc/init.d/postfix start

adduser dafnem
adduser lucasg

usermod -aG sudo dafnem #dafne root

su -c dafnem #troca para o usuario dafne

mail lucasg
# mail dafnem@lumidoublemailserver.com 