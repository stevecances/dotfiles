#!/usr/bin/env bash

brew update
brew doctor
brew upgrade

brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap AdoptOpenJDK/openjdk

brew cask install adoptopenjdk11
brew cask install google-cloud-sdk
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install slack
brew cask install sublime-text
brew cask install alfred
brew cask install carbon-copy-cloner
brew cask install docker
brew cask install evernote
brew cask install intellij-idea
brew cask install iterm2
brew cask install keka
brew cask install spectacle
brew cask install microsoft-remote-desktop-beta
brew cask install keystore-explorer

brew install git
brew install git-crypt
brew install maven
brew install the_silver_searcher
brew install wget
brew install nvm
brew install ansible
brew install bash-completion
brew install jq
brew install kubernetes-cli
brew install httpie
brew install watch
brew install htop
brew install fzf
brew install terminal-notifier
brew install pv
brew install bat
brew install diff-so-fancy
brew install tldr
brew install fd
brew install coreutils
brew install telnet
brew install stern
brew install rbenv
brew install kubernetes-helm
brew install terraform
brew install autossh
brew install bash-completion
brew install derailed/k9s/k9s
brew install redis
brew install bash
brew install skaffold
brew install postgresql