# Terraform IPI - Cours 2025 Benjamin BELAUD

## Prérequis, installation de packstack

Une fois connecté en root sur votre machine Ubuntu avec un utilisateur local (pas en root !) :

```
git clone https://opendev.org/openstack/devstack
cd devstack
```

Créez le fichier local.conf dans le dossier devstack :
```
[[local|localrc]]
ADMIN_PASSWORD=votremotdepasse
DATABASE_PASSWORD=$ADMIN_PASSWORD
RABBIT_PASSWORD=$ADMIN_PASSWORD
SERVICE_PASSWORD=$ADMIN_PASSWORD
```

Lancez le script stack.sh :

```
./stack.sh
```
Le temps d'installation peut variez de 5 à 20 minutes en fonction de votre connexion ou dd. 

## Téléchargement du package Terraform  :

https://releases.hashicorp.com/terraform/1.12.2/terraform_1.12.2_windows_amd64.zip

Copiez le fichier terraform.exe dans le dossier C:\Windows\System32

Redémarrez VSCode ou votre shell pour confirmer.