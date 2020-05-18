export PATH="/opt/homebrew/bin:$HOME/bin:$PATH";

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit

# Load dotfiles
for file in ~/.{work,path,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# History http://zsh.sourceforge.net/Doc/Release/Options.html
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
HISTSIZE=10000
SAVEHIST=10000

# Key bindings
bindkey '[C' forward-word   # alt+left
bindkey '[D' backward-word  # alt+right

# Tab completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# fzf : command line fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.iterm2_shell_integration.zsh

# GCloud utility
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# Kubetcl
source <(kubectl completion zsh)

# default java version
setjdk 21

# Setup NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# Auto-load nvm version on directory change
autoload -U add-zsh-hook
add-zsh-hook chpwd load-nvmrc
load-nvmrc