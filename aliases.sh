
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias dotfile='git --git-dir=$HOME/dotfiles/.git --work-tree=$PWD'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias grep='grep --color=auto -d recurse'
alias k='konsole --profile $(shuf -n 1 -e $(konsole --list-profiles)) &'
alias la='exa --group-directories-first -a'
alias ls='exa --group-directories-first'
alias ll='exa --group-directories-first -l'
alias np='nano -w PKGBUILD'
alias more=less
