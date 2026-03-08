if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  colorize
  kitty
  zsh-autosuggestions
  zsh-interactive-cd
  fzf
)

source $ZSH/oh-my-zsh.sh

if [ -f "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias md='glow -p'
alias hg="kitten hyperlinked-grep"
alias python='python3'
alias qa='exit'
alias l='ls'
alias show_pic="kitty +kitten icat"

set -o vi
export KEYTIMEOUT=1

tg_tp() {
  sh ~/.config/kitty/toggle-transparency.sh
}

export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
    nvm() {
        unset -f nvm
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
        nvm "$@"
    }
fi

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
