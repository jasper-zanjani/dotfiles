COLOR1=`shuf -en 1 91 92 93 94 95 96`
COLOR2=`shuf -en 1 31 32 33 34 35 36`
export PS1="\n\e[${COLOR1}m  `pwd`\n\e[${COLOR2}m$ \e[39m"  
