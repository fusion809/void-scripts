# Switch to SSH
function gitsw {
  # $1 is the username of the repo
  git remote rm origin
  git remote rm upstream
	CWD=${PWD##*/}
	GWD="${CWD#.}"
  if `printf $PWD | grep "AUR" > /dev/null 2>&1`; then
    git remote add origin ssh+git://aur@aur.archlinux.org/$GWD.git
  else
  	if [[ -n "$1" ]]; then
  	  git remote add origin git@github.com:$1/$GWD.git
  	  git remote add upstream git@github.com:$1/$GWD.git
  	else
  	  git remote add origin git@github.com:fusion809/$GWD.git
  	  git remote add upstream git@github.com:fusion809/$GWD.git
  	fi
  fi
}

alias SSH=gitsw
alias gitssh=gitsw
alias gits=gitsw
