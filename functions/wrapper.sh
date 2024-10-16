#!/bin/sh

## live-build(7) - System Build Scripts
## Copyright (C) 2006-2011 Daniel Baumann <daniel@debian.org>
##
## live-build comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
## This is free software, and you are welcome to redistribute it
## under certain conditions; see COPYING for details.


Apt ()
{
	case "${LB_APT}" in
		apt|apt-get)
			Chroot chroot apt-get ${APT_OPTIONS} ${@}
			;;

		aptitude)
			Chroot chroot aptitude ${APTITUDE_OPTIONS} ${@}
			;;
	esac
}
