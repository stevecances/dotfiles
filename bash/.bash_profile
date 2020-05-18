# Add `~/bin` to the `$PATH`
export PATH="/opt/homebrew/bin:$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add tab completion for many Bash commands
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# fzf : command line fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f "${HOME}/.iterm2_shell_integration.bash" ] && source "${HOME}/.iterm2_shell_integration.bash"

# Git
source "$(brew --prefix)/opt/git/etc/bash_completion.d/git-completion.bash"
source "$(brew --prefix)/opt/git/etc/bash_completion.d/git-prompt.sh"

# GCloud utility
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"

# default java version
setjdk 20

# Default is zsh. I use bash
export BASH_SILENCE_DEPRECATION_WARNING=1

# servio
export SERVIO_LOCATION='/Users/scances/projects/servio'
export SERVIO_ANNOUNCEMENTS_LOCATION='/Users/scances/projects/servio-announcements'
export USERNAME='scances'

source ${SERVIO_LOCATION}/tools/dotfiles/.servio.sh

export USE_GKE_GCLOUD_AUTH_PLUGIN=True # voir https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
