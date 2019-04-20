## Special settings for Windows 
if [[ $OSTYPE =~ 'msys'|'cygwin' ]]
then
  ## Enable symlink support in MS Windows
  ## see: https://www.joshkel.com/2018/01/18/symlinks-in-windows/
  export MSYS="winsymlinks:nativestrict"
  alias firefox='/c/Program\ Files/Mozilla\ Firefox/firefox.exe'
  alias python="winpty python.exe"
fi

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

COLOR1=`shuf -en 1 91 92 93 94 95 96`
# COLOR2=`shuf -en 1 31 32 33 34 35 36`
export PS1="\e[${COLOR1}m$ \e[39m"  
export TERM=xterm-256color
export PAGER=most
export BAT_PAGER=less
export GIT='https://www.github.com/jasper-zanjani/'
export PROMPT_COMMAND='
  printf "  \e[36m`pwd`\e[90m "
  CONTENTS=$(exa --reverse --sort=modified | tr "\n" " ")
  if [ ${#CONTENTS} -gt $COLUMNS ]
  then
    echo -n $CONTENTS | head -c $(expr $COLUMNS "-" $(pwd | wc -m) "-" 6)
    echo " ..."
  else 
    echo $CONTENTS
  fi'
export HISTSIZE=-1
export HISTFILESIZE=-1
export MOST_INIT="$HOME/.mostrc"
export EDITOR="vim"

export PATH=$PATH':/usr/src/bin'
export PATH=$PATH":$HOME/Scripts"

neofetch | lolcat
