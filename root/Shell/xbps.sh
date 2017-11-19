function xbi {
    xbps-install -y "$@"
}

function update {
    xbps-install -Su -y "$@"
}

alias xbup=update
alias xbu=update

function xbr {
    xbps-remove -y "$@"
}

function xbs {
    xbps-query -Rs "$@"
}
