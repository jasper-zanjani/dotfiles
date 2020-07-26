#### 
###    .o8                          oooo                           
##    "888                          `888                           
#      888oooo.   .oooo.    .oooo.o  888 .oo.   oooo d8b  .ooooo.  
#      d88' `88b `P  )88b  d88(  "8  888P"Y88b  `888""8P d88' `"Y8 
#      888   888  .oP"888  `"Y88b.   888   888   888     888       
# .o.  888   888 d8(  888  o.  )88b  888   888   888     888   .o8 
# Y8P  `Y8bod8P' `Y888""8o 8""888P' o888o o888o d888b    `Y8bod8P' 

caps () {
  xmodmap $HOME/.caps-esc-swap
}

gitnow () {
  git pull --quiet
  git add . 
  if [[ $# > 0 ]]
  then 
    echo "Using user-provided commit message"
    git commit -m "$1"
  else
    echo "No commit message, filling in"
    git commit -m "Updating"
  fi
  git push --quiet
}

dtf () {
  git --git-dir=$HOME/dotfiles/.git --work-tree=$HOME add $1 && \
  git --git-dir=$HOME/dotfiles/.git --work-tree=$HOME commit -m "Updating $1" && \
  git --git-dir=$HOME/dotfiles/.git --work-tree=$HOME push --quiet
}

pw () {
  LENGTH="15"
  [[ "$#" -gt 0 ]] && LENGTH=$1
  # echo 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@!#$%^&*()_-+=[]{}:;,.<>' | fold -w1 | shuf -r | tr -d "\n" | head -c $LENGTH | tr -d "\n" | tee $CLIPBOARD
  openssl rand -base64 48 | cut -c1-$LENGTH
}

kanban () {
while (( "$#" )); do
  case "$1" in
    -w|--wod)
      OUTPUT="#### Morning WOD\n$(date '+%Y/%m/%d')\n"$(cat "$HOME/kanban/wod")
      echo -e "$OUTPUT" | tee "$CLIPBOARD"
      shift ;;
    *)
      echo "Currently only the options -w|--wod are supported"
      shift ;;
  esac
done
}

prompt () {
  export COLOR1=$(shuf -en 1 91 92 93 94 95 96)
  export COLOR2=$(($COLOR1-60))
  export PROMPT_COMMAND='printf "\e[90m[ \e[${COLOR2}m`pwd`\e[90m ]"'
  export PS1=" \e[${COLOR1}m$ \e[39m"
}

## Special settings for Windows 
if [[ $OSTYPE =~ 'msys'|'cygwin' ]]
then
  ## Enable symlink support in MS Windows
  ## see: https://www.joshkel.com/2018/01/18/symlinks-in-windows/
  export MSYS="winsymlinks:nativestrict"
  export PAGER='less'
  export OS='WIN'
  export CODE_KEYBINDING_DIR='/c/Users/jaspe/AppData/Roaming/Code/User'
  alias az='/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/Azure/CLI2/wbin/az.cmd'
  alias firefox='/c/Program\ Files/Mozilla\ Firefox/firefox.exe'
  alias python="winpty python.exe"
  alias la='ls --group-directories-first --all --color=auto'
  alias ll='ls --group-directories-first --format=long --color=auto'
  alias ls='ls --group-directories-first --color=auto'
fi

## Special settings for Mac OS X
if [[ $OSTYPE =~ 'darwin' ]]
then
  export CLIPBOARD='pbcopy'
  export CODE_KEYBINDING_DIR="/Users/$USER/Library/Application Support/Code/User"
  export HISTSIZE=99999
  export HISTFILESIZE=99999
  export BROWSER='open -a /Applications/Firefox.app' # used by Newsboat
  export PAGER='most'
  export OS='MAC'
  #   CONTENTS=$(exa --reverse --sort=modified | tr "\n" " ")
  #   if [ ${#CONTENTS} -gt $COLUMNS ]
  #   then
  #     echo -n $CONTENTS | head -c $(expr $COLUMNS "-" $(pwd | wc -m) "-" 6)
  #     echo " ..."
  #   else 
  #     echo $CONTENTS
  #   fi'
  alias la='exa --group-directories-first -a'
  alias ls='exa --group-directories-first'
  alias ll='exa --group-directories-first -l'
  alias python='python3'
  alias pip='pip3'
  [[ $PATH =~ '/Library/Frameworks/Python.framework/Versions/3.7/bin' ]] || export PATH=$PATH':/Library/Frameworks/Python.framework/Versions/3.7/bin'
  [[ $PATH =~ "$HOME/.cargo/bin" ]] || export PATH=$PATH":$HOME/.cargo/bin"
  [[ $PATH =~ "$HOME/.npm-global/bin" ]] || export PATH=$PATH":$HOME/.npm-global/bin"
fi

## Special settings for Linux
if [[ $OSTYPE =~ 'linux' ]]
then
  export BROWSER='firefox'
  export CLIPBOARD='xclip -selection clipboard'
  export CODE_KEYBINDING_DIR="$HOME/.config/Code/User"
  export HISTFILESIZE=-1
  export HISTSIZE=-1
  export OS='LX'
  export PAGER='most'
  alias k='konsole --profile $(shuf -n1 -e $(ls $HOME/.local/share/konsole *.profile)) &> /dev/null &'
  alias la='lsd --group-dirs=first --icon-theme=unicode -a'
  alias ls='lsd --group-dirs=first --icon-theme=unicode '
  alias ll='lsd --group-dirs=first --icon-theme=unicode  -l'
  alias lla='lsd --group-dirs=first --icon-theme=unicode  -la'
fi

alias cp="cp -i"        # confirm before overwriting something
alias df='df -h'        # human-readable sizes
alias free='free -m'    # show sizes in MB
alias dotfile='git --git-dir=$HOME/dotfiles/.git --work-tree=$PWD'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias grep='grep --color=auto --directories=recurse'
alias np='nano -w PKGBUILD'
alias more='less'
alias newsboat='newsboat --quiet --refresh-on-start'

COLOR1=$(shuf -en 1 91 92 93 94 95 96)
COLOR2=$(($COLOR1-60))

export BAT_PAGER='less'
export EDITOR='vim'
export MOST_INITFILE="$HOME/most.d/KDEMellowTurquoise.mostrc"
export PROMPT_COMMAND='printf "\e[90m[ \e[${COLOR2}m`pwd`\e[90m ]"'
export PS1=" \e[${COLOR1}m$ \e[39m"
export TERM='xterm-256color'

[[ $PATH =~ '/usr/src/bin' ]] || export PATH=$PATH':/usr/src/bin'
[[ $PATH =~ "$HOME/Scripts" ]] || export PATH=$PATH":$HOME/Scripts"


## Old PROMPT_COMMAND, kept for posterity
# export PROMPT_COMMAND='
#   printf "  \e[${COLOR2}m`pwd`\e[90m "
#   CONTENTS=$(lsd --timesort | tr "\n" " ")
#   if [ ${#CONTENTS} -gt $COLUMNS ]
#   then
#     echo -n $CONTENTS | head -c $(expr $COLUMNS "-" $(pwd | wc -m) "-" 6)
#     echo " ..."
#   else 
#     echo $CONTENTS
#   fi'
