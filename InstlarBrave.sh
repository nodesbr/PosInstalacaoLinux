#!/bin/bash
# =====================================================
#                                                    ==
#       DESENVOLVIDO POR NODESBR 8.9.2024            ==
#                                                    ==
# =====================================================

echo ""
echo "   # ====================================================="
echo "   # =                                                  =="
echo "   # =        Instalação do navegador Brave             =="
echo "   # =                                                  =="
echo "   # ====================================================="
echo ""

read -p " Pressione Enter para continuar ou CTRL+C para sair..."
echo ""

echo " Instalando o Curl"
sudo apt install curl

echo ""
echo " Adicionando Source.list"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo ""

echo "Atualizando"
sudo apt update

echo ""
echo "Instalando"
sudo apt install brave-browser

echo ""
echo "O Brave será aberto"
echo "Aguarde..."
echo ""
brave-browser
