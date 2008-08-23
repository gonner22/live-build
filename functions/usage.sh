#!/bin/sh

# usage.sh - print usage information
# Copyright (C) 2006-2008 Daniel Baumann <daniel@debian.org>
#
# live-helper comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

set -e

#FIXME: put this in l10n standard
Usage ()
{
	echo "${PROGRAM} - ${DESCRIPTION}"
	echo
	echo "Usage:"
	echo

	if [ -n "${USAGE}" ]
	then
		echo "  ${USAGE}"
		echo
	fi

	echo "  ${PROGRAM} [-h|--help]"
	echo "  ${PROGRAM} [-u|--usage]"
	echo "  ${PROGRAM} [-v|--version]"
	echo
	echo "Try \"${PROGRAM} --help\" for more information."

	exit 1
}
