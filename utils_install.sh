#!/bin/bash

# Vérification des droits root
if [[ $EUID -ne 0 ]]; then
    echo "Ce script doit être exécuté en tant que root (utilisez sudo)." >&2
    exit 1
fi

echo "🔄 Mise à jour du système..."
apt update && apt upgrade -y

echo "🔹 Installation des outils de développement..."
apt install -y build-essential manpages-dev clang-format clangd

echo "🔹 Installation de Make, GDB et Valgrind..."
apt install -y make gdb valgrind

echo "🔹 Installation des librairies nécessaires..."
apt install -y libreadline-dev libncurses-dev

echo "🔹 Installation de Git..."
apt install -y git

# Configuration de Git
read -p "Entrez votre nom Git: " GIT_NAME
read -p "Entrez votre email Git: " GIT_EMAIL
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

echo "🔹 Installation de Python3 et Pip..."
apt install -y python3 python3-pip
pip3 install --upgrade pip setuptools

echo "🔹 Installation de Norminette..."
pip3 install norminette

echo "🔹 Installation de VSCode..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | tee /etc/apt/sources.list.d/vscode.list
apt update
apt install -y code

echo "🔹 Installation des extensions VSCode..."
sudo -u "$SUDO_USER" code --install-extension ms-vscode.cpptools
sudo -u "$SUDO_USER" code --install-extension ms-vscode.cmake-tools
sudo -u "$SUDO_USER" code --install-extension vadimcn.vscode-lldb
sudo -u "$SUDO_USER" code --install-extension twxs.cmake
sudo -u "$SUDO_USER" code --install-extension jeff-hykin.better-cpp-syntax
sudo -u "$SUDO_USER" code --install-extension editorconfig.editorconfig
sudo -u "$SUDO_USER" code --install-extension eamodio.gitlens

echo "✅ Installation terminée !"
echo "🚀 Vous pouvez maintenant utiliser VSCode et coder en C avec les outils de l'école 42."
echo "📌 Vérifiez Norminette avec: norminette --version"
