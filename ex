#!/bin/sh
#
# Wrapper for historical vi/ex

case $0 in *vi)
	set -- -v "$@"
esac

if test $(uname) = 'Linux'
then
	TERMCAP=$(infocmp -CT "$TERM" | grep -v \#) \
        exec ~/dotfiles/bin/ex-Linux "$@"
fi
exec command -p ex "$@"
