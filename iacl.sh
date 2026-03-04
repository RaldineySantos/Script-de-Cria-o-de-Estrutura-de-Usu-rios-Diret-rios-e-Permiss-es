#!/bin/bash

echo "Criando mkdir"

mkdir /puclico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de user"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando users"

useradd carlos -m -s /binbash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /binbash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /binbash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /binbash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /binbash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /binbash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /binbash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /binbash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /binbash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GPP_VEN /ven
chown root:GPP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM"
