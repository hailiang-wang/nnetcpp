#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
. $baseDir/localrc
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
if  [ 0 -eq "$#" ]; then
    echo "test all"
    sleep 2
    cd $buildDir
    ls
    ./tests/tests all
else
    echo "test" $*
    cd $buildDir
    ./tests/tests $*
fi
