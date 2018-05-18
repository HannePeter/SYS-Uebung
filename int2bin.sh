# Schreiben Sie ein Bash-Skript int2bin.sh welches eine übergeben Ganzzahl als
# Bitstring ausgibt.



#!/bin/bash

usage ()
{
    echo "Usage: $0 <Integer>" >&2
    exit 1
}

if [ $# -ne 1 ]; then
    usage
fi




number=$1

while [ $number -gt 0 ]; do
    bitstring="$((number % 2))$bitstring"
    number=$((number / 2))
done

echo "Bitstring: $bitstring"
