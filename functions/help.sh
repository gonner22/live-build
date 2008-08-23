#!/bin/sh

# help.sh - print help information
# Copyright (C) 2006-2008 Daniel Baumann <daniel@debian.org>
#
# live-helper comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

set -e

Help ()
{
        Echo "%s - %s" "${PROGRAM}" "${DESCRIPTION}"
	echo
	Echo "Usage:"
	echo

	if [ -n "${USAGE}" ]
	then
		Echo "%s" "${USAGE}"
		echo
	fi
	Echo "  %s [-h|--help]" "${PROGRAM}"
	Echo "  %s [-u|--usage]" "${PROGRAM}"
	Echo "  %s [-v|--version]" "${PROGRAM}"
	echo

	if [ -n "${HELP}" ]
	then
		Echo "%s" "${HELP}"
		echo
	fi

	Echo "Report bugs to Debian Live project <http://debian-live.alioth.debian.org/>."
	exit 0
}
