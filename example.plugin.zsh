# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

alias bzr='bazel run'
alias bzb='bazel build'
alias bzt='bazel test'
alias bra='bazel run //...'
alias bba='bazel build //...'
alias bta='bazel test //...'

alias bbo16='bazel build //o2016:frc1678 --cpu=roborio'
alias bbc17='bazel build //c2017:frc1678 --cpu=roborio'
alias bbo17='bazel build //o2017:frc1678 --cpu=roborio'
alias bbc18='bazel build //c2018:frc1678 --cpu=roborio'
alias bbo18='bazel build //o2018:frc1678 --cpu=roborio'
alias bbc19='bazel build //c2019:frc1678 --cpu=roborio'
alias bbo19='bazel build //o2019:frc1678 --cpu=roborio'
alias bbc20='bazel build //c2020:frc1678 --cpu=roborio'
alias bbo20='bazel build //o2020:frc1678 --cpu=roborio'
alias bbc21='bazel build //c2021:frc1678 --cpu=roborio'
alias bbo21='bazel build //o2021:frc1678 --cpu=roborio'

alias deployo16='bazel run //o2016:deploy --cpu=roborio -- --team=1678'
alias deployc17='bazel run //c2017:deploy --cpu=roborio -- --team=1678'
alias deployo17='bazel run //o2017:deploy --cpu=roborio -- --team=1678'
alias deployc18='bazel run //c2018:deploy --cpu=roborio -- --team=1678'
alias deployo18='bazel run //o2018:deploy --cpu=roborio -- --team=1678'
alias deployc19='bazel run //c2019:deploy --cpu=roborio -- --team=1678'
alias deployo19='bazel run //o2019:deploy --cpu=roborio -- --team=1678'
alias deployc20='bazel run //c2020:deploy --cpu=roborio -- --team=1678'
alias deployo20='bazel run //o2020:deploy --cpu=roborio -- --team=1678'
alias deployc21='bazel run //c2021:deploy --cpu=roborio -- --team=1678'
alias deployo21='bazel run //o2021:deploy --cpu=roborio -- --team=1678'

alias robot1678='ssh admin@roborio-1678-frc.local'
alias robot9678='ssh admin@roborio-9678-frc.local'
alias robot8678='ssh admin@roborio-8678-frc.local'

alias stp='~/robot-code/scripts/tests.py --no-vision'
alias cpplint='~/robot-code/scripts/cpplint/run-cpplint.sh'

alias atom='echo "Thank you for choosing neovim over atom. Have a nice day!"; nvim'
alias vim='echo Thank you for choosing neovim over vim. Have a nice day! && nvim'
alias vi='echo Thank you for choosing neovim over vi. Have a nice day! && nvim'
alias v='nvim'

alias ct='command cat'
alias cat='lolcat'

alias please='sudo'
alias plz='please'
alias get='plz apt-get install'
alias up='plz apt-get update && plz apt-get upgrade'

#miscellaneous
alias fun='command cat /dev/urandom'
alias format='clang-format -i'
alias git praise='git blame'
alias hack='hollywood'

#TODO(Nathan) create vim fold to hide the following aliases
# {{{
alias ccd='command cd'
alias cd='xdg-open && ccd' #TODO(Nathan) url for rick-roll prank
# }}}
