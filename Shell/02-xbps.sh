function xbi {
    sudo xbps-install -y "$@" || xi -f -y "$@"
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

function obup {
	cdgo OpenRA ; git pull origin bleed -q
	mastn=$(comno)
	comm=$(loge)
	specn="$1"
	specm="$2"
	cdpk void-packages-bleed/srcpkgs/openra-bleed ; git pull upstream master -q;
	sed -i -e "s/version=$specn/version=$mastn/g" \
           -e "s/commit=$specm/commit=$comm/g" template
	xgensum -i template
	makepkg -i
	rm -rf /tmp/openra-update-lock
}

# OpenRA installed version
ORAIV=$(cat /usr/lib/openra/VERSION)
ORATV=$(cat $PK/void-packages-bleed/srcpkgs/openra-bleed/template | grep "version=" | cut -d '=' -f 2)
COMT=$(cat $PK/void-packages-bleed/srcpkgs/openra-bleed/template | grep "commit=" | cut -d '=' -f 2)

if ( ! [[ $ORAIV == "bleed-$ORATV" ]] ) || ( ! [[ -f /tmp/openra-update-lock ]] ) ; then
	read -p "You may wish to rebuild OpenRA as an update is available. Would you like to do that now?\n" yn
	case $yn in
		[yY]*)
			obup $ORATV $COMT;;
		[nN]*)
			read -p "OK, would you like to be re-asked when Zsh is re-started?\n" yn2
			case $yn2 in
				[nN]*)
					touch /tmp/openra-update
			esac
	esac
fi
