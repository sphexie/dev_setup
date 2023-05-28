#!/bin/bash

apt update

apt install ca-certificates curl gnupg wget -y
apt install git -y
apt install bat -y
apt install openssh-server -y
apt install fzf -y

sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
