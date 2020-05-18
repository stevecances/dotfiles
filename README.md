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
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby
```

# Setup & run dotfiles
```shell
mkdir ~/projects
cd ~/projects

git clone https://github.com/stevecances/dotfiles.git
cd dotfiles

./osx/set-defaults.sh
./homebrew/formulas.sh

cp .aliases .bash_profile .bash_prompt .exports .functions .gitconfig ~ && source ~/.bash_profile
```

# Upgrade to bash 5
Append `/usr/local/bin/bash` to file `/etc/shells`
```shell
chsh -s /usr/local/bin/bash
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
rbenv install 2.6.1
```

# Node
```shell
nvm install node
```