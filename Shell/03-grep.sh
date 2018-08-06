function xbpsdef {
    cdvp common
    grep --include="*.sh" -R "_$1" -A "$2" | sed 's/.*.sh[:-]//g'
}
