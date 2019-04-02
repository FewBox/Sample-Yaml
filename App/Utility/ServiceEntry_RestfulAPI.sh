#!/bin/sh
# $1 - Namespace Name
# $2 - ServiceEntry Name
# $3 - Host

CURRENTDIR=$(dirname -- "$BASH_SOURCE")
. $CURRENTDIR/ServiceEntry.sh $1 $2 $3 0.0.0.0/0 http 80 HTTP