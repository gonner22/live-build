#!/bin/sh

# common.sh - common things for all live-helpers
# Copyright (C) 2006-2008 Daniel Baumann <daniel@debian.org>
#
# live-helper comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

PROGRAM="$(basename ${0})"
PACKAGE="live-helper"
VERSION="1.0.2-2"

PATH="${PWD}/scripts:${PATH}"
