source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
PROMPT='%? %B%~%b$(git_super_status) %T'$'\n''%# '

export EDITOR="vi"
export VISUAL="vi"

export HISTSIZE=100000
export SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY_TIME
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

autoload -Uz compinit; compinit
autoload bashcompinit && bashcompinit

complete -C '/usr/local/bin/aws_completer' aws

alias d='dirs -v'
for index ({1..9}) alias "d$index"="cd +${index}"; unset index

alias szrc="source ~/.zshrc"
alias vzrc="vi ~/.zshrc"
alias ll="ls -Glah"
alias ls="ls -G"

alias quag="ag -Q"
alias agg="ag -g"

alias ga="git add"
alias gc="git commit -m"
alias gac="git commit -am"
alias gca="git commit --amend"
alias gd="git diff"
alias gl="git log"
alias gs="git status"
alias gch="git checkout"
alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gb="git checkout -b"
alias gcl="git clean -i"
alias gt="git log --oneline --decorate --tags --no-walk"
alias gp="git push -u origin HEAD"

alias tree="tree -I '__pycache__|*.pyc|venv'"

alias va="source venv/bin/activate"

bindkey -v
bindkey "^R" history-incremental-search-backward

dh() { sed -i '.bak' "$1d" ~/.ssh/known_hosts && rm ~/.ssh/known_hosts.bak; }

export GPG_TTY=$(tty)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

am () {
    eval $(aws-login-tool login $(aws-login-tool list-roles -u $USER -m | peco) -u $USER)
}
export PATH="/usr/local/opt/openjdk/bin:$PATH"
