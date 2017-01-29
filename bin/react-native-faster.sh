# INSTALL:
# open zshrc configuration file
# . ~/.zshrc
# add to .zshrc:
# source /Users/salek/Documents/scripty/react-native-faster.sh
# use rn

function rn() {
  if [ -z $1 ];
  then
    __showParamList
    return 0
  fi

  case $1 in

    "-a-nt" | "-a" )
          if [ $1 == "-a-nt" ]; then
            {tab react-native run-android}
          else
            {react-native run-android}
          fi
      ;;

   "-i-nt" | "-i")
         if [ $1 == "-a-nt" ]; then
           {tab react-native run-ios}
         else
           {react-native run-ios}
         fi
      ;;

   "-ai" | "-ai-nt")
         if [ $1 == "-ai-nt" ]; then
           {tab react-native run-ios}
           {tab react-native run-android}
         else
           {react-native run-ios}
           {react-native run-android}
         fi
      ;;

   "-s" | "-s-nt")
         if [ $1 == "-s-nt" ]; then
           {tab react-native start}
         else
           {react-native start}
         fi
   ;;

   "-ae" | "-ae-nt")
      if [ $2 == "-l" ]; then
        { emulator -list-avds }
        return 0
      fi

      if [ $1 == "-ae-nt" ]; then
            if [ -z $2 ]; then
              { tab emulator @NexusOne25 }
            else
            { tab emulator $2 }
          fi
        else
          if [ -z $2 ]; then
            { emulator @NexusOne25 }
          else
            { emulator $2 }
          fi
      fi
    ;;

   "-ie" | "-ie-nt")
        if [ -z $2 ]; then
          {open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app }
        else
          if [ $2 == "-l" ]; then
            { xcrun simctl list devices }
            return 0;
          elif [ $2 == "-l-nt" ]; then
            {tab xcrun simctl list devices}
            return 0;
          else
            {open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app  --args -CurrentDeviceUDID $2}
          fi
        fi
    ;;
     *)
       echo "*** Unknown parameter: $1 ***\n"
       {__showParamList}
      ;;
esac
}

__showParamList(){
  echo "Made by Šály..."
  echo "\n\t===================== React Native start"
  echo "-s \t start react-native server"
  echo "-s-nt \t start react-native server in new terminal"
  echo "\n\t===================== React Native builds"
  echo "-a \t build Android ";
  echo "-a-nt \t build Android in new terminal ";
  echo "-i \t build IOS ";
  echo "-i-nt \t build IOS in new terminal ";
  echo "-ai \t build Android and IOS"
  echo "-ai-nt \t build Android and IOS in new terminals"
  echo "\n\t===================== Android Emulators"
  echo "-ae '@DeviceName' \t run Android emulator.\n\t\t\t '@DeviceName' default: @NexusOne25  "
  echo "-ae-nt '@DeviceName' \t run Android emulator in new terminal.\n\t\t\t '@DeviceName' default: @NexusOne25  "
  echo "-ae -l \t list of Android devices"
  echo "\n\t===================== IOS Emulators"
  echo "-ie 'deviceUUID' \t run IOS emulator. \n\t\t\t'deviceName' default: last used "
  echo "-ie-nt 'deviceUUID' \t run IOS emulator in new terminal. \n\t\t\t'deviceName' default: last used "
  echo "-ie -l \t list of IOS devices"
}
