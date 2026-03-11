PROMPT="-> %~ %#%f "
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="$(npm root -g)/../bin:$PATH"
# brew install auto suggestions and syntax highlighting
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -r '^Y'
bindkey '^Y' autosuggest-accept

eval "$(zoxide init zsh)"

# setup fzf and fuzzy
eval "$(fzf --zsh)"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"

# Setup fzf previews
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"

# fzf preview for tmux
export FZF_TMUX_OPTS=" -p90%,70% "  

source ~/scripts/fzf-git.sh/fzf-git.sh

#alias fman="compgen -c | fzf | xargs man"

alias ls="eza --no-filesize --long --color=always --icons=always --no-user" 

# Hisotry size
HISTSIZE=100000
HISTFILESIZE=200000

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/gordon/.lmstudio/bin"

eval "$(direnv hook zsh)"
export PATH="$HOME/.cargo/bin:$PATH"
