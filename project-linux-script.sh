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

useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd ana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd rosa -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd max -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd paul -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd cesar -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd clara -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd abdon -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd ozzy -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 740 /adm
chmod 750 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim...."