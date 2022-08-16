#! /bin/bash

echo  "Criando os diretorios no linux"


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "criando os grupos dos usuarios "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "criando os usuarios "
echo "  "

echo "  "

useradd carlos -m -c " carlos " -s /bin/bash -p $(openssl passwd -crypt senha 123) 
useradd maria -m -c " maria " -s /bin/bash -p $(openssl passwd -crypt senha 123) 
useradd joao -m -c " joao " -s /bin/bash -p $(openssl passwd -crypt senha 123) 

echo "  "

useradd debora -m -c " debora " -s /bin/bash -p $(openssl passwd -crypt senha 123) 
useradd sebastiana -m -c " sebastiana " -s /bin/bash -p $(openssl passwd -crypt senha 123) 
useradd roberto -m -c " roberto " -s /bin/bash -p $(openssl passwd -crypt senha 123)

echo "  "

useradd josefina -m -c " josefina " -s /bin/bash -p $(openssl passwd -crypt senha 123) 
useradd amanda -m -c " amanda " -s /bin/bash -p $(openssl passwd -crypt senha 123) 
useradd rogerio -m -c " rogerio " -s /bin/bash -p $(openssl passwd -crypt senha 123) 

echo "adicionando os usuarios nos grupos "

echo "  "
echo " adicionando no grupo GRP_ADM  "
usermod -G GRP_ADM carlos 
usermod -G GRP_ADM maria 
usermod -G GRP_ADM joao 

echo "  "
echo " adicionando no grupo GRP_SEC  "
usermod -G GRP_VEN debora 
usermod -G GRP_VEN sebastiana 
usermod -G GRP_VEN roberto 

echo "  "
echo " adicionando no grupo GRP_SEC  "
usermod -G GRP_SEC josefina 
usermod -G GRP_SEC amanda 
usermod -G GRP_SEC rogerio 

echo " especificando as permissoes dos diretorios"

echo "  "

echo " definindo os donos dos grupos"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


echo "  "


echo "definindo as permissoes  "

echo "  "

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo "  "


echo " finalizado  "


echo "  "











