#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

VERSION="$1"

# Vérifier la version de SSH actuellement installée
CURRENT_VERSION=$(ssh -V 2>&1 | awk '{print $1}' | sed 's/,$//' | awk -F_ '{print $2}')
if [ "${CURRENT_VERSION}" == "${VERSION}" ]; then
  echo "La version ${VERSION} de SSH est déjà installée."
  exit 0
fi

# Demander confirmation avant l'installation
read -p "Voulez-vous installer la version ${VERSION} de SSH ? (y/n) " confirm
if [ "${confirm}" != "y" ]; then
  echo "Installation annulée."
  exit 0
fi

# Télécharger, compiler et installer la nouvelle version de SSH
wget "https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-${VERSION}.tar.gz"
sudo apt-get update -y
sudo apt-get install build-essential zlib1g-dev -y
tar xvzf "openssh-${VERSION}.tar.gz"
cd "openssh-${VERSION}"
./configure
make
sudo make install
sudo systemctl restart sshd
systemctl restart mariadb
ssh -V
