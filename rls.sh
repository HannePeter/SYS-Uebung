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

if [ $1 -ge $2 ]; then
    echo "Der Parameter <min> muss kleiner als <max> sein!" >&2
    exit 1
fi



files=$(ls)
for file in $files; do

    strlen=$(echo -n $file | wc -c)

    if [ $strlen -ge $1 -a $strlen -lt $2 ]; then
        echo $file
    fi
done
