function xbi {
    sudo xbps-install -y "$@"
}

function xbs {
    sudo xbps-query -s "$@"
}

function update {
    sudo xbps-install -Su -y "$@"
}

alias xbup=update

function xbr {
    sudo xbps-remove -y "$@"
}
