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

export PATH=$PATH':/usr/src/bin'
export PATH=$PATH':/home/jasper/perl6/bin'
