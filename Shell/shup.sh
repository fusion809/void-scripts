function shup {
    sudo chmod +x -R {$HOME,/root}/Shell/ && cdvs && push "$1" &&cd - && szsh
}
