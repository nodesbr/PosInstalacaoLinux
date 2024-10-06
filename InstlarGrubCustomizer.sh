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

echo " Instalando o Customizer."
echo ""
echo " Adicionando a PPA do GrubCustomizer."
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
echo ""

echo " É preciso atualizar para instalar de fato."
sudo apt update

echo ""
echo "Instalando agora."
sudo apt install grub-customizer

echo ""
echo "O Brave será aberto"
echo "Aguarde..."
echo ""

