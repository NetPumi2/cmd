alias mySsh="__getSsh"

__getSsh() {
  cat ~/.ssh/id_rsa.pub
}

function gi() {
  if [ -z $1 ];
  then
    __showParamListForGit
    return 0
  fi

  case $1 in
    "-l" )
            { git log --all --graph --pretty=format:'%C(auto)%h%C(auto)%d %s %C(dim white)(%aN, %ar)'}
      ;;
  esac

}

__showParamListForGit(){
  echo "\n\t====== gi ...-params"
  echo "\n\t===================== git tree"
  echo "-l \t visualizing branch topology "
}
