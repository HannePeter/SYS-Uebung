# Schreiben Sie ein Shell-Skript premv.sh <old-prefix> <new-prefix> welches
# bei allen Dateinamen im aktuellen Verzeichnis die mit Präfix old-prefix be-
# ginnen durch den Präfix new-prefix ersetzt.
#
# Beispiel
# $ ls
# foo.dat foobar premv.sh test.txt
# $ ./premv.sh foo zzz
# $ ls
# premv.sh test.txt zzz.dat zzzbar



#!/bin/bash

usage ()
{
    echo "usage: S0 <old-prefix> <new-prefix>" >&2
}

if [ $# -ne 2 ]; then
    usage
fi



len=$(echo $1 | wc -m)
prelen=$(( len - 1 ))

files=$(ls)
for file in $files; do

    filepre=$(echo $file | cut -c -$prelen)
    restoffile=$(echo $file | cut -c $len-)

    if [ $filepre == $1  ]; then
        mv $file $2"$restoffile"
    fi
done
