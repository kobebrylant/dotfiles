if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$HOME/.local/share/pnpm:$PATH"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  colorize
  kitty
  zsh-autosuggestions
  zsh-interactive-cd
  fzf
  web-search
  extract
)

source $ZSH/oh-my-zsh.sh

if [ -f "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias vim='nvim'
alias md='glow -p'
alias hg="kitten hyperlinked-grep"
alias python='python3'
alias qa='exit'
alias l='ls'
alias show_pic="kitty +kitten icat"
alias ls='eza -x --group-directories-first'
alias ll='eza --long --group-directories-first'
alias la='eza --long --all --group-directories-first'
alias lt='eza --icons --tree --level=2'
alias lg='lazygit'

# set -o vi
#export KEYTIMEOUT=1

tg_tp() {
  sh ~/.config/kitty/toggle-transparency.sh
}

DISABLE_AUTO_TITLE="true"
precmd() { print -Pn "\e]0;%~\a" }

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# To customize prompt, run `p10k configure` or edit ~/dotfiles/zsh/.p10k.zsh.
[[ ! -f ~/dotfiles/zsh/.p10k.zsh ]] || source ~/dotfiles/zsh/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Yabai + skhd + borders management
alias wm-start='yabai --start-service && skhd --start-service && sleep 1 && borders active_color=0xff00ff00 inactive_color=0xff555555 width=6.0 >/dev/null 2>&1 &'
alias wm-stop='yabai --stop-service; skhd --stop-service; pkill -9 borders'
alias wm-restart='wm-stop && sleep 1 && wm-start'
alias wm-status='ps aux | grep -E "yabai|skhd|borders" | grep -v grep'

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/wojciechskula/.lmstudio/bin"
# End of LM Studio CLI section


# pnpm
export PNPM_HOME="/Users/wojciechskula/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/wojciechskula/.bun/_bun" ] && source "/Users/wojciechskula/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
