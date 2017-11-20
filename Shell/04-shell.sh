# Source bashrc
function sbash {
    source $HOME/.bashrc
}

# Source zshrc
function szsh {
    source $HOME/.zshrc
}

# Fix corrupted .zsh_history
function zshf {
    mv $HOME/.zsh_history $HOME/.zsh_history_bad
    strings $HOME/.zsh_history_bad > $HOME/.zsh_history
    fc -R $HOME/.zsh_history
}
