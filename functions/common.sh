#!/bin/sh

## live-build(7) - System Build Scripts
## Copyright (C) 2006-2015 Daniel Baumann <mail@daniel-baumann.ch>
##
## This program comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
## This is free software, and you are welcome to redistribute it
## under certain conditions; see COPYING for details.


PROGRAM="live-build"
VERSION="$(if [ -e ${LIVE_BUILD}/VERSION.txt ]; then cat ${LIVE_BUILD}/VERSION.txt; else cat /usr/share/live/build/VERSION.txt; fi)"
CONFIG_VERSION="$(echo ${VERSION} | awk -F- '{ print $1 }')"

# FIXME
LIVE_BUILD_VERSION="${CONFIG_VERSION}"

PATH="${PWD}/local/bin:${PATH}"
