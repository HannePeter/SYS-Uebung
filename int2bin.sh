# Schreiben Sie ein Bash-Skript int2bin.sh welches eine übergeben Ganzzahl als
# Bitstring ausgibt.


#!/bin/bash

number=$1

while [ $number -gt 0 ]; do
    bitstring="$((number % 2))$bitstring"
    number=$((number / 2))
done

echo "Bitstring: $bitstring"
