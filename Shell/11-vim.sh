function ved {
    vim *.ebuild
}

function vfs {
    sudo vim /etc/fstab
}

function vsh {
    pushd $HOME/Shell
    vim
    popd
}

function vrc {
    vim $HOME/.vimrc
}
