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
cd $buildDir
tests/sequencegeneration \
    --network gru \
    --method stdbptt \
    --hidden 10 \
    --rate 0.001 \
    --epochs 1000 \
