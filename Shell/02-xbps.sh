function xbi {
    sudo xbps-install "$@"
}

function xbs {
    sudo xbps-query -s "$@"
}

function update {
    sudo xbps-install -Su "$@"
}

function xbr {
    sudo xbps-remove "$@"
}
