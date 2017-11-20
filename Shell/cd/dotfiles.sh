

function cdi3 {
    cd $HOME/.i3/$1
}

function cdls {
    cd $HOME/.local/share/$1
}

function cdlsa {
    cdls "applications/$1"
}

alias cdap=cdlsa

function cdlsi {
    cdls "icons/$1"
}

function cdlsw {
    cdls "wallpapers/$1"
}

