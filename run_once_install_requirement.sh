#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRIB="${NAME}-${VERSION_ID}"
fi

case ${DISTRIB} in

Ubuntu-24.04)
    # Update
    sudo apt update && sudo apt upgrade -y
    # Install tools
    sudo apt install -y zsh bat eza tree fd-find net-tools bind9-dnsutils
    # Install zoxide
    sh -c "$(curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh)"
    # batcat => bat
    ln -s $(which batcat) ~/.local/bin/bat
    # fdfind => fd
    ln -s $(which fdfind) ~/.local/bin/fd
    # Install starship prompt theme
    sh -c "$(curl -fsLS https://starship.rs/install.sh)" -- -y
    # Install fzf binary into ~/.local/bin
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/workspace/fzf
    ~/workspace/fzf/install --bin && cp -p ~/workspace/fzf/bin/fzf ~/.local/bin/
    # Change default shell to zsh
    sudo sed -i "s/\/bin\/bash/\/bin\/zsh/g" /etc/passwd
    ;;

*)
    echo "${DISTRIB} not yet handle"
    ;;

esac
