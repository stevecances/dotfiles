# Install dev tools
```shell
xcode-select --install
```

# Update mac
```shell
sudo softwareupdate -i -a
```

# Install Homebrew
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Setup & run dotfiles
```shell
mkdir ~/projects
cd ~/projects

git clone https://github.com/stevecances/dotfiles.git
cd dotfiles

./osx/set-defaults.sh
./homebrew/formulas.sh

cp zsh/.zshrc zsh/.aliases zsh/.functions zsh/.work zsh/.p10k.zsh .gitconfig ~ && source ~/.zshrc
```

# Setup fzf
```shell
$(brew --prefix)/opt/fzf/install
```

# Sublime
```shell
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

# Ruby
```shell
rbenv init
rbenv install VERSION
```

# iterm2

```shell
curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh
```

## Installer la font MeslogLGS dans iterm2

```
https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf
```
