alias lock="mac lock"

function mac() {
  if [ -z $1 ];
  then
    __showParamListForMac
    return 0
  fi

  case $1 in
    "hide-files" | "show-files" )
      if [ $1 == "hide-files" ]; then
        { defaults write com.apple.finder AppleShowAllFiles NO }
      else
        { defaults write com.apple.finder AppleShowAllFiles YES }
      fi
        { killall Finder }
    ;;
    "lock" )
        { /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend }
    ;;

  esac
}
__showParamListForMac(){
  echo "\n\t====== mac ...-params"

  echo "\n\t===================== mac "
  echo "hide-files \t hide all hidden files"
  echo "show-files \t show all hidden files"
  echo "lock \t lock screen"

  echo "\n\t===================== mac alias "
  echo "lock \t lock screen"

}
