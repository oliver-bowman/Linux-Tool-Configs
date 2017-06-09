# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000000000000
SAVEHIST=10000000000000
bindkey -v
if [ "$TERM" = "screen-256color" ]; then
    export TERM=xterm-256color
fi
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/oliver.bowman/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
if [ -f `which powerline-daemon` ]; then
 powerline-daemon -q
 POWERLINE_ZSH_CONTINUATION=1
 POWERLINE_ZSH_SELECT=1
 . /usr/share/powerline/zsh/powerline.zsh
fi

export NVM_DIR="/home/oliver.bowman/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
