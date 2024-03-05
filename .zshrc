source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias work="neovide ~/repos/work"
alias school="neovide ~/repos/school"
alias notes="neovide ~/notes"
alias neovide="neovide ."
alias edit="neovide"
alias nc="edit ~/.config/nvim/lua/"

export PATH="/home/adam/.cargo/bin/:$PATH"
export JFLEX_DIR=$HOME/jflex-1.7.0 
export CUP_DIR=$HOME/cup

config pull

