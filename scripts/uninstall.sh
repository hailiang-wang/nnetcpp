#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
set -x
if [ -f /usr/local/lib/libnnetcpp.a ]; then
    rm -rf /usr/local/lib/libnnetcpp.a
fi

if [ -d /usr/local/include/nnetcpp ]; then
    rm -rf /usr/local/include/nnetcpp
fi
