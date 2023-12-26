#!/bin/sh -x 

ln -s $(pwd)/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/git/.gitignore ~/.gitignore

ln -s $(pwd)/bash/.bash_profile ~/.bash_profile
ln -s $(pwd)/bash/.bashrc ~/.bashrc
ln -s $(pwd)/bash/.git-prompt.sh ~/.git-prompt.sh
ln -s $(pwd)/bash/.git-completion.bash  ~/.git-completion.bash

ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf
