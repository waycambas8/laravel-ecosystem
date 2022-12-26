#!/bin/sh
set -e

/usr/local/bin/inithost.sh &

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php "$@"
fi

exec "$@"