#!/bin/csh
#
# Run a remote startup script from NFS if it exists.

test -r /netfs/startup.sh || exit 0
test -x /netfs/startup.sh || exit 0
. /netfs/startup.sh

