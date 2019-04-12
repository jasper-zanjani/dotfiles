alias python="winpty python.exe"
export TERM=xterm-256color

## Enable symlink support in MS Windows
## see: https://www.joshkel.com/2018/01/18/symlinks-in-windows/
export MSYS="winsymlinks:nativestrict"
alias firefox='/c/Program\ Files/Mozilla\ Firefox/firefox.exe'
alias x='explorer.exe .'
PATH='~/.bat:'$PATH

