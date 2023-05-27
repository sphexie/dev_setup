#!/bin/bash

apt install tmux -y

git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm
/root/.tmux/plugins/tpm/bin/install_plugins
