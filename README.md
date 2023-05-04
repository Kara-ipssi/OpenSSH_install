# Installation de SSH

Ce script permet de télécharger, compiler et installer une nouvelle version de SSH sur un système Linux.

## Prérequis

Avant d'utiliser ce script, vous devez vous assurer que les paquets `build-essential` et `zlib1g-dev` sont installés sur votre système. Vous pouvez les installer en utilisant la commande suivante :


## Utilisation

Pour utiliser ce script, vous devez d'abord télécharger le fichier `install_ssh.sh` et le rendre exécutable :


Ensuite, vous pouvez exécuter le script en spécifiant la version de SSH que vous souhaitez installer :


Si la version spécifiée est déjà installée, le script affichera un message et se terminera avec un code de sortie de 0. Sinon, le script téléchargera, compilera et installera la nouvelle version de SSH.

Avant d'installer une nouvelle version de SSH, le script demandera une confirmation à l'utilisateur. Si l'utilisateur ne confirme pas l'installation, le script affichera un message et se terminera avec un code de sortie de 0.

## Licence

Ce script est distribué sous licence MIT. Veuillez vous référer au fichier `LICENSE` pour plus d'informations.
