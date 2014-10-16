#!/bin/ksh

if [[ "x$FOO" = "x" ]]; then
    FOO=bar
fi

echo ${FOO}
