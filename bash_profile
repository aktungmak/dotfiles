HISTSIZE=1000000

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi


GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_FETCH_REMOTE_STATUS=0
GIT_PROMPT_SHOW_UPSTREAM=0
GIT_SHOW_UNTRACKED_FILES=no

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

alias sbp="source ~/.bash_profile"
alias vbp="vi ~/.bash_profile"
alias ll="ls -Glah"
alias ls="ls -G"

alias quag="ag -Q"
alias agg="ag -g"

alias ga="git add"
alias gc="git commit -m"
alias gac="git commit -am"
alias gd="git diff"
alias gl="git log"
alias gs="git status"
alias gch="git checkout"
alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gb="git checkout -b"
alias gcl="git clean -i"
alias gt="git log --oneline --decorate --tags --no-walk"

alias cepr="bin/connect.sh eu production rds"
alias cesr="bin/connect.sh eu staging rds"
alias cep="bin/connect.sh eu production"
alias ces="bin/connect.sh eu staging"

alias cupr="bin/connect.sh us production rds"
alias cup="bin/connect.sh us production"

alias capr="bin/connect.sh ap production rds"
alias casr="bin/connect.sh ap staging rds"
alias cap="bin/connect.sh ap production"
alias cas="bin/connect.sh ap staging"

fm() { ag "define.$1"; }
dh() { sed -i '.bak' "$1d" ~/.ssh/known_hosts && rm ~/.ssh/known_hosts.bak; }

bind '"\C-x\C-u": shell-expand-line'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="/usr/local/opt/erlang/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

export GPG_TTY=$(tty)
