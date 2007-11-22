#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

PKG_NAME="libgweather"

(test -f $srcdir/configure.in \
  && test -d $srcdir/libgweather) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level libgweather directory"
    exit 1
}


which gnome-autogen.sh || {
    echo "You need to install gnome-common from the GNOME CVS"
    exit 1
}
REQUIRED_AUTOMAKE_VERSION=1.8 \
USE_GNOME2_MACROS=1 \
. gnome-autogen.sh
