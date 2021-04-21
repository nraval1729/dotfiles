# To disable history sharing between tabs in iterm2

unsetopt inc_append_history
unsetopt share_history

#source `which virtualenvwrapper.sh`

alias testdrone='ssh -i ~/Desktop/Aplopio.pem ubuntu@10.210.81.239'
alias nuke_app='docker container ls -a | grep dev_app | cut -d" " -f1 | xargs docker rm -f'
alias nuke_dev='docker container ls -a | grep dev | cut -d" " -f1 | xargs docker rm -f'
export ZSH="/Users/nisarg/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    )

source $ZSH/oh-my-zsh.sh
export GPG_TTY=$(tty)

compctl -g '~/.itermocil/*(:t:r)' itermocil

PATH='/Users/nisarg/.rbenv/versions/2.6.2/bin:/Users/nisarg/.rbenv/versions/2.6.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Wireshark.app/Contents/MacOS'

# ALIASES
alias ggpushnv='ggpush --no-verif'
alias p3='python3'
alias gocb='go clean && go build'

export GOPATH=~/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/smlnj/bin

ssh-prod() {
    ssh -i ~/work/recruiterbox-keys/Aplopio.pem ubuntu@$1
}

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)🚀"
  fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
