#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/..
echo $0 LOCAL_WORKSPACE
set -x
CURR=`pwd`
docker run -m 4g -it --rm -v $CURR:/workspace --name blade samurais/blade:latest bash
