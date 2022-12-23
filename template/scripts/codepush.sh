#!bin/bash

# Author: Le Duc Tung
# Username: ledutu
# Script will be showed below:

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green

TYPE=$1

function codePush() {
  cd ios && fastlane codepush env:$1 && cd .. && cd android && fastlane codepush env:$1 && cd ..
}

function main() {
  # increaseCodepushVersion
  codePush $TYPE
  
  if [ $? -eq 0 ]; then
    printf "\n$Green Code Push Successful\n"
  else
    printf "\n$Red Code Push Failed\n"
  fi
}

main