alias spp="__spotifyPlay"
alias sps="__spotifyStop"
alias spu="__spotifyVolumeUp"
alias spd="__spotifyVolumeDown"
alias spq="__spotifyQuit"

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
__showAppAliases(){
  echo "\n\t===================== Aliases -just write "
  echo "\n\t====== SPOTIFY"
  echo "spp \t spotify play"
  echo "sps \t spotify stop"
  echo "spu \t spotify volume up"
  echo "spd \t spotify volume down"
  echo "spq \t spotify quit"
}
