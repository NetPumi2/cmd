alias tss="__takeScreenShot"


function __takeScreenShot() {
  adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ~/Desktop/screen$RANDOM.png
}