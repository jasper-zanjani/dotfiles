## Environment variables
export TERM=xterm-256color
export PAGER=most
export GIT='https://www.github.com/jasper-zanjani/'
export PROMPT_COMMAND='echo; pwd; ls;'
export HISTSIZE=-1
export HISTFILESIZE=-1

## PATH additions
export PATH=$PATH':/usr/src/bin'

## Special settings for Windows 
if [[ $OSTYPE =~ 'msys'|'cygwin' ]]
then
  ## Enable symlink support in MS Windows
  ## see: https://www.joshkel.com/2018/01/18/symlinks-in-windows/
  export MSYS="winsymlinks:nativestrict"
  alias firefox='/c/Program\ Files/Mozilla\ Firefox/firefox.exe'
  alias python="winpty python.exe"
fi

source aliases.sh
source prompt.sh

neofetch
exa -l
