#!/bin/sh

# l10n.sh - load the needed localization things for all lh messages
# Copyright (C) 2006-2008 Daniel Baumann <daniel@debian.org>
#
# live-helper comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

if [ -x "$(which gettext.sh 2>/dev/null)" ]
then
	_L10N="enabled"

	# gettext domain (.mo file name)
	TEXTDOMAIN="${PROGRAM}"
	export TEXTDOMAIN

	# locale dir for gettext codes
	TEXTDOMAINDIR="/usr/share/locale"
	export TEXTDOMAINDIR

	# load gettext functions
	. gettext.sh
else
	_L10N="disabled"
fi
