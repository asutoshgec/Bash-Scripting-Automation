#!/usr/bin/env bash

addition()
{
    m=$1
    n=$2
    result=$((m+n))
    echo "Addition of $m and $n is : $result"
}

x=7
y=8
addition $x $y

p=9
q=10
addition $p $q

addition 4 9

