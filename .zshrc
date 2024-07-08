# ~/.zshrc

BAT_THEME="Catppuccin Mocha"
export GREP_OPTIONS='--color=auto'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse '
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
alias fzfp="fzf --preview='bat --color=always --style=numbers --theme OneHalfDark {}' --preview-window=up"
# ls
alias ls='exa -hF --color=auto'
alias lr='exa -R'                    # recursive ls
alias ll='exa -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'
## Safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias ..='cd ..'
## Modified commands
alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
#lasy commands
alias v='nvim'
alias q='exit'
alias c='clear'
alias z='zathura'
alias python="python3"
#config files
alias zrc='nvim ~/.zshrc'
alias nrc='cd ~/.config/nvim/'
alias reload='source ~/.zshrc'
# Git related
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gd='git diff'
alias gb='git branch'
alias gl='git log'
alias gsb='git show-branch'
alias gco='git checkout'
alias gg='git grep'
alias gk='gitk --all'
alias gr='git rebase'
alias gri='git rebase --interactive'
alias gcp='git cherry-pick'
alias grm='git rm'
nvf(){
nvim $(rg --files |fzf --preview='bat --color=always --style=numbers --theme OneHalfDark {}' --preview-window=left)
}
nvh(){
  nvim $(rg --files --hidden |fzfp)
}
eval "$(starship init zsh)"
