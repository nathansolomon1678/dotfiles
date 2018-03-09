# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

alias bzr='bazel run'
alias bzb='bazel build'
alias bzt='bazel test'

function deploy() {
  bazel run //"$1":deploy --cpu=roborio -c opt -- --team="$2"
}
function build-year() {
  bazel build //"$1":all -c opt --cpu=roborio
}
function robot() {
  ssh admin@roborio-"$1"-frc.local
}

alias tests='cd ~/robot-code; sh ./robot-code/scripts/tests.sh'
alias lint='cd ~/robot-code; sh ./robot-code/scripts/cpplint/run-cpplint.sh'

alias atom='echo "Thank you for choosing neovim over atom. Have a nice day!"; nvim'
alias vim='echo "Thank you for choosing neovim over vim. Have a nice day!"; nvim'
alias vi='echo "Thank you for choosing neovim over vi. Have a nice day!"; nvim'
alias v='nvim'

alias ct='lolcat'

alias please='sudo'
alias plz='please'
alias get='plz apt-get install'
alias up='plz apt-get update; plz apt-get upgrade'

google() {
  search=""
  echo "Googling: $@"
  for term in $@; do
    search="$search%20$term"
  done
  lynx "http://www.google.com/search?q=$search"
}
alias ggl='google'
alias xkcd='xdg-open https://xkcd.com/' #open up latest xkcd comic
alias slack='xdg-open https://citruscircuits1678.slack.com/'
alias drive='xdg-open https://drive.google.com/drive/team-drives'
alias ghub='xdg-open https://github.com/frc1678/robot-code'
alias stuff='slack; drive; ghub'

#more git aliases
alias gist='echo "BRANCHES:\n__________________________________________________" | lolcat;
            gb -vv;

            echo "\n\nREMOTES:\n__________________________________________________" | lolcat;
            gr -vv;

            echo "\n\nSTATUS:\n__________________________________________________" | lolcat;
            gst;

            echo "\n\nFILES & DIRECTORIES:\n__________________________________________________" | lolcat;
            ls'

function bible() {
  url="https://www.openbible.info/topics/"
  echo "What does the bible say about $@?"
  for word in $@; do # append each parameter as a word to the url, separated by underscores
    url=$url"$word"
    url=$url"_"
  done
  url=${url%?} # remove last underscore
  lynx "$url"
}

#miscellaneous
alias fun='command cat /dev/urandom'
alias format='clang-format -i'
alias praise='git blame'
alias hack='hollywood'
alias rick-roll='xdg-open https://www.youtube.com/watch?v=dQw4w9WgXcQ' # to make a great prank, make an alias cd='rick-roll'
alias cl='clear'
