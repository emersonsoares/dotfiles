#Load Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/emersonsoares/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)

# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD

# Now we can pipe to multiple outputs!
setopt MULTIOS

# 10 second wait if you do something that will delete everything.  I wish I'd had this before...
setopt RM_STAR_WAIT

# use magic (this is default, but it can't hurt!)
setopt ZLE

# Android SDK 
export ANDROID_HOME=/usr/local/opt/android-sdk

export LC_ALL="en_US.UTF-8"

export JAVA_HOME=$(/usr/libexec/java_home)

export PATH=$PATH:/opt/local/bin

export PATH="/usr/local/opt/openssl/bin:$PATH"

plugins=(jsontools)

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

export PATH=~/.local/bin:$PATH
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/emersonsoares/.asdf/installs/nodejs/9.3.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/emersonsoares/.asdf/installs/nodejs/9.3.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/emersonsoares/.asdf/installs/nodejs/9.3.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/emersonsoares/.asdf/installs/nodejs/9.3.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh