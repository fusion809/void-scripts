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
alias xbu=update

function xbr {
    sudo xbps-remove "$@"
}

function xbry {
    sudo xbps-remove -y "$@"
}

# List orphans
function orp {
    sudo xbps-query -O
}

# Autoremove
function xbar {
    xbr $(orp)
}

function makepkg {
    pkg=${PWD##*/} ; cdvp ; ./xbps-src pkg $pkg ; cd -
}
