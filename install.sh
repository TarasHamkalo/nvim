#!/bin/bash
#wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
#unzip Hack-v3.003-ttf.zip
#mv ./ttf/* ~/.fonts/
#fc-cache -f -v

sudo apt update 
sudo apt install curl fd-find ripgrep xclip nodejs npm python3-pip openjdk-17-jdk cargo -y
sudo npm install -g tree-sitter -y
sudo apt install python3-neovim -y
