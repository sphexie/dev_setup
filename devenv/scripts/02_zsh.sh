#!/bin/bash

apt install zsh -y
curl -L git.io/antigen > /root/.antigen.zsh

chsh -s $(which zsh)
