# Fish configuration file
## aliases
alias irb='irb --simple-prompt'
alias learn='ls | sort -R | sed 1q | xargs bat'
alias bpython='/Library/Frameworks/Python.framework/Versions/3.7/bin/bpython'
alias bat='bat --pager less'
alias ls='exa'
alias grep 'grep -i'

## other settings
set -x PAGER most
set -x PATH $PATH /Applications/Rakudo/bin 
set -x PATH $PATH "$HOME/.npm-global/bin"
alias firefox 'open -a /Applications/Firefox.app/'
