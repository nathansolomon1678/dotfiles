`deploy`: deploys code to a robot (2 parameters)

  * Example: `deploy c2018 9678`
  * This runs `bazel run //c2018:deploy --cpu=roborio -c opt -- --team=9678`

`build-year`: builds robot-code (1 parameter)

  * Example: `build-year c2018`
  * This runs `bazel build //c2018:all -c opt --cpu=roborio`

`robot`: ssh into a robot (1 parameter)

  * Example: `robot 8678`
  * This runs `ssh admin@roborio-"$1"-frc.local`

`google` or `ggl`: does a google search in lynx

  * Example: `ggl how to fix c++ errors`
  * This opens up a google search in lynx for "how to fix c++ errors"

`bible`: tells you what the bible says about something

  * Example: `bible donald trump`
  * This opens up openbible.info in lynx and shows passages from the bible that are related to donald trump
