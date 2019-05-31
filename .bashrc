#
# ~/.bashrc
#

caps () {
  xmodmap $HOME/.caps-esc-swap
}


## Special settings for Windows 
if [[ $OSTYPE =~ 'msys'|'cygwin' ]]
then
  ## Enable symlink support in MS Windows
  ## see: https://www.joshkel.com/2018/01/18/symlinks-in-windows/
  export MSYS="winsymlinks:nativestrict"
  alias firefox='/c/Program\ Files/Mozilla\ Firefox/firefox.exe'
  alias python="winpty python.exe"
fi

## Special settings for Mac OS X
if [[ $OSTYPE =~ 'darwin' ]]
then
  alias la='exa --group-directories-first -a'
  alias ls='exa --group-directories-first'
  alias ll='exa --group-directories-first -l'
  export PATH=$PATH":/Library/Frameworks/Python.framework/Versions/3.7/bin"
  export PATH=$PATH":$HOME/.cargo/bin"
  export PATH=$PATH":$HOME/.npm-global/bin"
  export HISTSIZE=99999
  export HISTFILESIZE=99999
  export PROMPT_COMMAND='
    printf "  \e[${COLOR2}m`pwd`\e[90m "
    CONTENTS=$(exa --reverse --sort=modified | tr "\n" " ")
    if [ ${#CONTENTS} -gt $COLUMNS ]
    then
      echo -n $CONTENTS | head -c $(expr $COLUMNS "-" $(pwd | wc -m) "-" 6)
      echo " ..."
    else 
      echo $CONTENTS
    fi'
fi

## Special settings for Linux
if [[ $OSTYPE =~ 'linux' ]]
then
  export HISTSIZE=-1
  export HISTFILESIZE=-1
  alias k='konsole --profile $(shuf -n1 -e $(ls $HOME/.local/share/konsole *.profile)) &> /dev/null &'
  alias kl='konsole --profile $(shuf -n1 $HOME/.local/share/konsole/lightprofiles) &> /dev/null &'
  alias cfgpb='$EDITOR $HOME/.config/polybar/default.polybar'
  alias cfgi3='$EDITOR $HOME/.config/i3/config'
  alias cfgca='$EDITOR $HOME/.config/castero/castero.conf'
  alias cfgqt='$EDITOR $HOME/.config/qtile/config.py'
  alias la='lsd --group-dirs first --icon-theme=unicode -a'
  alias ls='lsd --group-dirs first --icon-theme=unicode '
  alias ll='lsd --group-dirs first --icon-theme=unicode  -l'
  . yakuake-blurry-bg-fix
  alias lla='lsd --group-dirs first --icon-theme=unicode  -la'
  export PROMPT_COMMAND='
    printf "  \e[${COLOR2}m`pwd`\e[90m "
    CONTENTS=$(lsd --timesort | tr "\n" " ")
    if [ ${#CONTENTS} -gt $COLUMNS ]
    then
      echo -n $CONTENTS | head -c $(expr $COLUMNS "-" $(pwd | wc -m) "-" 6)
      echo " ..."
    else 
      echo $CONTENTS
    fi'
fi

alias cp="cp -i"        # confirm before overwriting something
alias df='df -h'        # human-readable sizes
alias free='free -m'    # show sizes in MB
alias dotfile='git --git-dir=$HOME/dotfiles/.git --work-tree=$PWD'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias grep='grep --color=auto -d recurse'
alias np='nano -w PKGBUILD'
alias more='less'
alias refresh-prompt='export PS1="\e[$(shuf -en 1 91 92 93 94 95 96)m$ \e[39m"'
alias nflight='for n in {1..6}; do neofetch --colors $n 0 0 $n 0 0 --ascii_colors $n; done;'
alias nfdark='for n in {1..6}; do neofetch --colors $n 255 255 $n 255 255 --ascii_colors $n; done;'
alias cfgnb='$EDITOR $HOME/.config/newsboat/config'
alias cfgnbu='$EDITOR $HOME/.config/newsboat/urls'

COLOR1=$(shuf -en 1 91 92 93 94 95 96)
COLOR2=$(shuf -en 1 31 32 33 34 35 36)
export PS1="\e[${COLOR1}m$ \e[39m"
export TERM='xterm-256color'
export PAGER='most'
export BAT_PAGER='less'
export MOST_INIT="$HOME/.mostrc"
export EDITOR='vim'
export PATH=$PATH':/usr/src/bin'
export PATH=$PATH":$HOME/Scripts"

caps
