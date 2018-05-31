# Schreiben Sie ein Shell-Skript rls.sh mit der Syntax. rls.sh <min> <max>.
# Das Skript soll alle Dateien im aktuellen Verzeichnis auflistet, deren Namen
# eine Länge von mindestens <min> Zeichen UND weniger als <max> Zeichen hat.
# Geben Sie eine Usage-Meldung auf stderr aus und beenden Sie das Skript
# mit dem Rückgabewert 1, falls das Programm das Programm nicht sachgemäß
# aufgerufen wurde.



#!/bin/bash

usage ()
{
    echo "Usage: $0 <min> <max>" >&2
    exit 1
}

if [ $# -ne 2 ]; then
    usage
fi



min=$1
max=$2
files=$(ls)

if [ $min -ge $max ]; then
    echo "Der Parameter <min> muss kleiner als <max> sein!" >&2
    exit 1
fi

for file in $files; do

    strlen=$(echo $file | wc -c)
    strlen=$(( strlen -1 ))

    if [ $strlen -ge $min -a $strlen -lt $max ]; then
        echo $file
    fi
done
