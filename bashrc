alias g="git"
alias p="python3"
alias v="nvim"
alias x="xdg-open"

shopt -s autocd

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias ga='git add'
alias gr='git remote'
alias glg='git log'
alias gl='git pull'
alias gp='git push'
alias gf='git fetch'
alias gst='git status'

google() {
  search=""
  echo "Googling: \"$@\""
  for term in $@; do
    search="$search%20$term"
  done
  xdg-open "http://www.google.com/search?q=$search" > /dev/null
}

# This file was create by installing Modeller from https://salilab.org/modeller/10.1/release.html#unix
# I then removed the last line (which said `exec "$@"`) from the followinng file:
source /home/nathan/bin/modeller10.1/bin/modpy.sh
source $HOME/.cargo/env

export PATH=$PATH:~/yasara
export PATH=$PATH:~/bin/OpenBCI_GUI

PYTHONPATH="${PYTHONPATH}:PYLSL_LIB"
