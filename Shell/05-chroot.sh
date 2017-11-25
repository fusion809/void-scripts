# Chroot into my Arch Linux partition
function aroot {
    sudo arch-chroot /arch /bin/zsh
}

# Chroot into my Gentoo Linux partition
function groot {
    sudo mount -t proc none /gentoo/proc
    sudo mount --rbind /dev /gentoo/dev
    sudo mount --make-rslave /gentoo/dev
    sudo mount --rbind /sys /gentoo/sys
    sudo mount --make-rslave /gentoo/sys
    sudo cp -L /etc/resolv.conf /gentoo/etc
    sudo chroot /gentoo /bin/zsh
}