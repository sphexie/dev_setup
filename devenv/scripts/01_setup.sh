#!/bin/bash

apt update

apt install ca-certificates curl gnupg wget -y
apt install git -y
apt install bat -y
apt install openssh-server -y

sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
# apt install unzip -y
# apt install fontconfig -y
# apt install kbd -y

# install SourceCodePro Nerd Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/SourceCodePro.zip
#unzip SourceCodePro.zip -d /root/.fonts
#fc-cache -fv
#echo "done!"
