function xbi {
    xbps-install "$@"
}

function update {
    xbps-install -Su "$@"
}

function xbr {
    xbps-remove "$@"
}

function xbs {
    xbps-query -s "$@"
}
