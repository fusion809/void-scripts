function xbi {
    sudo xbps-install -y "$@"
}

function xbs {
    sudo xbps-query -Rs "$@"
}

function update {
    sudo xbps-install -Su -y "$@"
}

alias xbup=update

function xbr {
    sudo xbps-remove -y "$@"
}
