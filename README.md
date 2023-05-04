# Installation de SSH

Ce script permet de télécharger, compiler et installer une nouvelle version de SSH sur un système Linux.

```bash
wget https://raw.githubusercontent.com/Kara-ipssi/OpenSSH_update/main/install_ssh.sh
```

## Utilisation

Pour utiliser ce script, vous devez d'abord télécharger le fichier `install_ssh.sh` et le rendre exécutable :

```bash
chmod +x install_ssh.sh
```


Ensuite, vous pouvez exécuter le script en spécifiant la version de SSH que vous souhaitez installer :

```bash
./install_ssh.sh 8.5p1
```


Si la version spécifiée est déjà installée, le script affichera un message et se terminera avec un code de sortie de 0. Sinon, le script téléchargera, compilera et installera la nouvelle version de SSH.

Avant d'installer une nouvelle version de SSH, le script demandera une confirmation à l'utilisateur. Si l'utilisateur ne confirme pas l'installation, le script affichera un message et se terminera avec un code de sortie de 0.

## Compatibilité

Ce script a été testé sur Debian.

## Licence

Ce script est distribué sous licence APACHE. Veuillez vous référer au fichier `LICENSE` pour plus d'informations.
