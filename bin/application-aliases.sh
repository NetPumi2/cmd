

alias gitkraken="__openGitKraken"
alias kraken="__openGitKraken"

alias th="__runThumberServer"
alias th-nt="__runThumberServerInNewTab"

function __openGitKraken() {
  open -a GitKraken
}

function __runThumberServerInNewTab() {
  tab thumbor
}

function __runThumberServer() {
  thumbor
}
