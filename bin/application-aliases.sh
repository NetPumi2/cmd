alias spp="__spotifyPlay"
alias sps="__spotifyStop"
alias spu="__spotifyVolumeUp"
alias spd="__spotifyVolumeDown"
alias spq="__spotifyQuit"
alias sp-n="__spotifyNext"
alias sp-p="__spotifyPrevious"
alias spi="__spotifyInfo"
alias spj="__spotifyJump"

function __spotifyPlay() {
  spotify play
}
function __spotifyStop() {
  spotify pause
}
function __spotifyVolumeUp() {
  spotify vol up
}
function __spotifyVolumeDown() {
  spotify vol down
}
function __spotifyQuit() {
  spotify quit
}
function __spotifyNext() {
  spotify next
}
function __spotifyPrevious() {
  spotify prev
}
function __spotifyInfo() {
  spotify info
}
function __spotifyJump() {
  spotify pos $1
}
__showAppAliases(){
  echo "\n\t===================== Aliases -just write "
  echo "\n\t====== SPOTIFY"
  echo "spi \t spotify info"
  echo "spq \t spotify quit"
  echo "spp \t spotify play"
  echo "sps \t spotify stop"
  echo "spu \t spotify volume up"
  echo "spd \t spotify volume down"
  echo "sp-n \t spotify next song"
  echo "sp-p \t spotify previous"
  echo "spj \t spotify jump at time [sec]"
}
