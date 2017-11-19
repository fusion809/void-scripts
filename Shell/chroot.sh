function aroot {
    sudo arch-chroot /arch /bin/zsh
}

function groot {
    sudo mount -t proc none /gentoo/proc
    sudo mount --rbind /dev /gentoo/dev
    sudo mount --make-rslave /gentoo/dev
    sudo mount --rbind /sys /gentoo/sys
    sudo mount --make-rslave /gentoo/sys
    sudo chroot /gentoo /bin/zsh
}
