#!/bin/sh
# $1 - Namespace Name
# $2 - ServiceEntry Name
# $3 - Host
BASEDIR=$(dirname $0)
. $BASEDIR/ServiceEntry.sh $1 $2 $3 0.0.0.0/0 http 80 HTTP