alias tss="__takeScreenShot"
alias uiviewer="/Users/salek/Library/Android/sdk/tools/bin/uiautomatorviewer"

function __takeScreenShot() {
  adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ~/Desktop/screen$RANDOM.png
}
