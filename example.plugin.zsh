# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

alias bzr='bazel run'
alias bzb='bazel build'
alias bzt='bazel test'

function deploy() { # example: deploy c2018 9678
  bazel run //"$1":deploy --cpu=roborio -- --team="$2"
}
alias dply='deploy'
function build-year() { # example: build-year o2019
  bazel build //"$1":"$1" --cpu=roborio
}
alias bld-yr='build-year'
function robot() { # example: deploy 8678
  ssh admin@roborio-"$1"-frc.local
}
alias rbt='robot'

alias tests='~/robot-code/scripts/tests.sh'
alias lint='~/robot-code/scripts/cpplint/run-cpplint.sh'

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
  xdg-open "http://www.google.com/search?q=$search"
}
alias 'ggl=google'
alias xkcd='xdg-open https://xkcd.com/' #open up latest xkcd comic
alias slack='xdg-open https://citruscircuits1678.slack.com/'
alias drive='xdg-open https://drive.google.com/drive/team-drives'
alias ghub='xdg-open https://github.com/frc1678/robot-code'
alias stuff='slack; drive; ghub'

#miscellaneous
alias fun='command cat /dev/urandom'
alias format='clang-format -i'
alias praise='git blame'
alias hack='hollywood'
