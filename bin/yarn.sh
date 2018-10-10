function y() {
  if [ -z $1 ];
  then
    __showParamListForYarn
    return 0
  fi

  case $1 in
    "-i" )
        { yarn install }
      ;;

    "-add" | "add" | "a" )
        { yarn add $2 }
      ;;

    "-rm" | "rm" )
        { yarn remove $2 }
      ;;

    "-ui" | "ui" )
        { yarn upgrade-interactive }
      ;;

    "-od" | "od" )
        { yarn outdated }
      ;;






      *)
        echo "*** Unknown parameter: $1 ***\n"
        {__showParamListForYarn}
       ;;
 esac
 }


  __showParamListForYarn(){
    echo "\n\t====== y ...-params"

    echo "\n\t===================== YARN"
    echo "-i \t yarn install"
  }
