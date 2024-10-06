#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   PosInstallNodesBr.sh 
# Description:   Instalação de pacontes iniciais.
# Written by:    Nilson Sousa
# Maintenance:   Nilson Sousa
# ------------------------------------------------------------------------ #
# Usage:         
#       $ ./PosInstall.sh
# ------------------------------------------------------------------------ #
# Bash Version:  
#              Bash 4.4.19
# ------------------------------------------------------------------------ #
#CODE
function menuprincipal () {
clear
echo ""
echo "   # ====================================================="
echo "   # =                                                  =="
echo "   # =        SCRIPT DE PÓS INSTALL DO NODESBR          =="
echo "   # =                                                  =="
echo "   # ====================================================="
echo " "
echo "Escolha uma opção abaixo para começar!

      1 - Básicos do Sistema.
      2 - Pacotes multimídias e MintMeta Codecs.
      3 - O Navegador Chrome.

      4 - Player, gravador e conversores.
      5 - Acessórios de Internet.

      6 - Instalar Grub-Customizer.
      7 - Removendo porcarias e Limpeza final.

      0 - Sair do menu."

 echo " "
 echo -n "Opção escolhida: "
 read opcao
 case $opcao in

       1)
# === Atualizando e iniciando as instalações =removido radeontop grub-customizer
echo " "
  echo " INSTALANDO PACOTES BÁSICOS"
  echo "Primeiro uma atualização"
echo ""
  sudo apt update
echo ""
  echo "Agora vamos de instalação"
echo ""
    sudo apt install qbittorrent synaptic conky-all stacer bleachbit gparted lm-sensors samba diodon numlockx -y
  echo "Tudo pronto"
read -p " Pressione Enter para continuar ou CTRL+C para sair..."
          menuprincipal
                        ;;

       2)
echo " "
echo " INSTALANDO PACOTES MULTIMÍDIAS e MINTMETA CODECS."
sudo apt install gimp gimp-data-extras gimp-plugin-registry ttf-mscorefonts-installer calibre mencoder -y
sudo apt install mint-meta-codecs -y
  echo "Tudo pronto"
read -p " Pressione Enter para continuar ou CTRL+C para sair..."
          menuprincipal
                        ;;

       3)
echo " "
echo " INSTALANDO NAVEGADOR CHROME."
cd ~/Downloads
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo " Instalando o Chrome."
    sudo dpkg -i *.deb
      sudo apt install -f
    rm *.deb
  echo "Tudo pronto"
read -p " Pressione Enter para continuar ou CTRL+C para sair..."
          menuprincipal
                        ;;

#       3)
#echo " "
#echo " INSTALANDO NAVEGADOR BRAVE."
#   sudo apt install curl
#echo " Adicionando a Source.list."
#    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
#    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#    sudo apt update
#    sudo apt install brave-browser
#  echo "Tudo pronto"
#read -p " Pressione Enter para continuar ou CTRL+C para sair..."
#          menuprincipal
#                        ;;

       4)
echo " "
echo " INSTALANDO PLAYERS, GRAVADOR E CONVERSOR."
    sudo apt install openshot-qt smplayer smplayer-themes audacity audacious vokoscreen inkscape winff mpv -y
  echo "Tudo pronto"
read -p " Pressione Enter para continuar ou CTRL+C para sair..."
          menuprincipal
                        ;;

       5)
# Extra:
echo ""
echo " INSTALANDO ACESSÓRIOS DE INTERNET"
sudo apt install linssid wifite traceroute mtr -y
sudo apt install bully hashcat hcxdumptool hcxtools macchanger
  echo "Tudo pronto"
read -p " Pressione Enter para continuar ou CTRL+C para sair..."
          menuprincipal
                        ;;

       6)
# - Concluindo.
echo ""
echo " Instalar Grub-Customizer"
echo " Adicionando a PPA do GrubCustomizer."
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt install grub-customizer
echo ""
echo " Tudo pronto."
read -p " Pressione Enter para continuar ou CTRL+C para sair..."
          menuprincipal
                        ;;

       7)
# - REMOVENDO PACOTES QUE NÃO VOU USAR.
echo ""
echo " REMOVENDO PORCARIAS e LIMPEZA FINAL DO SISTEMA"
sudo apt remove transmission*
sudo apt remove rhythmbox*
sudo apt remove thunderbird*
sudo apt remove hexchat*
sudo apt remove hypnotix*
sudo apt autoclean -y
sudo apt autoremove -y
  echo "Tudo pronto"
echo " Saindo..."
read -p " Pressione Enter para continuar ou CTRL+C para sair..."
          menuprincipal
                        ;;

# ======= ATUALIZAÇÃO SE HOUVER ALGUMA ================
#                                                    ==
#                 NODESBR 8.9.2024                   ==
#                                                    ==
# =====================================================

esac
}
menuprincipal
