cat $HOME/.config/wpg/sequences
clear && printf '\e[3J'

if test "$TERM_PROGRAM" != "vscode"
  cd /mnt/data/
end

alias angband-term 'angband -mgcu'

alias l 'ls'
alias ls '/bin/ls --color=always'
alias la 'l -lhaG --color=always'
thefuck --alias | source 

setxkbmap -option "nbsp:none"

set -g theme_nerd_fonts no
set -g theme_color_scheme terminal2

export SPICETIFY_INSTALL="/home/ilambda/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH" 
