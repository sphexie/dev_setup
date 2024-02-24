# Load Antigen
source /root/.antigen.zsh

# Load Antigen configurations
antigen init /root/.antigenrc

bindkey -v

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--no-mouse'
