# Schreiben Sie ein Bash-Skript nxls.sh <directory> welches in dem übergebe-
# nen Verzeichnis directory nur regulärer Dateien anzeigt, welche nicht ausfüh-
# bar sind.



#!/bin/bash

usage ()
{
    echo "usage: $0 <directory>" >&2
    exit 1
}

if [ $# -ne 1 ]; then
    usage
fi




echo "Folgende Dateien sind nicht ausfuehrbar:"
for file in $1/*; do
    if [ ! -x "$file" ]; then
       echo "$file"
    fi
done
