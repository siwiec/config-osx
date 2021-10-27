#!/bin/zsh

brew update
brew upgrade

brew install \
    autoconf \
    binutils \
    ffmpeg \
    gcc \
    gdb \
    jq \
    md5sha1sum \
    mdv \
    netcat \
    nmap \
    openvpn \
    p7zip \
    pyenv \
    rlwrap \
    telnet \
    tmux \
    unrar \
    vim \
    wget

brew install --cask \
    firefox \
    google-chrome \
    virtualbox \
    visual-studio-code \
    wireshark

for f in $(ls dotfiles); do
    ln -svf "$PWD/dotfiles/$f" "$HOME/.$f"
done

