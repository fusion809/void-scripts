function cdi3 {
    cd $HOME/.i3/$1
}

function cdps {
    cd $HOME/Pictures/Screenshots
}

function cdg {
    cd $GHUB/$1
}

function cdgm {
    cd $GHUBM/$1
}

function cdcf {
    cd $CFG/$1
}

function cdci3 {
    cdcf "i3-configs/$1"
}

function cdpk {
    cd $PKG/$1
}

function cdsc {
    cd $SCR/$1
}

function cdvs {
    cdsc "void-scripts/$1"
}

function cdgo {
    cd $GHUBO/$1
}

function cdfgi {
    cd $FGI/$1
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

function cdp {
    cd $HOME/Programs/$1
}
