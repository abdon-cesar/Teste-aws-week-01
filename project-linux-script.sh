#project-linux-script
#!/bin/bash

echo "Script para criação de pastas, usuários e grupos no Linux..."

echo "Criando Diretórios"
mkdir /publico adm ven sec

echo "criando grupos..."
groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "criando usuaários..."

useradd roberto -m -c "Administrador" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd roberto -e
useradd ana -m -c "Administrador" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd ana -e
useradd rosa -m -c "Administrador" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd rosa -e

useradd max -m -c "Vendedor" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd max -e
useradd paul -m -c "Vendedor" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd paul -e
useradd cesar -m -c "Vendedor" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd cesar -e


useradd clara -m -c "Segurança" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd clara -e
useradd abdon -m -c "Segurança" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd abdon -e
useradd ozzy -m -c "Segurança" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd ozzy -e

echo "Especificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 740 /adm
chmod 750 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim...."