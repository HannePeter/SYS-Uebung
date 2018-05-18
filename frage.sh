# Schreiben Sie ein Shellskript frage.sh, welches als Parameter drei Strings über-
# nimmt. Der erste Kommandozeilenparameter soll als Frage gestellt werden. Die
# mögliche ’Ja’ Antwort soll als zweiter Parameter und mögliche ’Nein’ Antwort
# als dritte Parameter übergeben werden. Wenn keine passende Antwort angege-
# ben wird, soll die Frage wiederholt werden.
# - Falls eine Antwort in dem möglichen ’Ja’ beantwortet wird, soll der Wert
#   0 zurückgeliefert werden,
# - falls die mögliche ’Nein’ Antwort angegeben wird soll eine 1 zurückgeliefert
#   werden.

# Beispiel
# $ ./frage.sh "Noch einen Kaffee ? " "Ja" "Nein"



#!/bin/bash

usage ()
{
    echo "Usage: $0 <question> <positive answer> <negative answer>" >&2
    exit 1
}

if [ $# -ne 3 ]; then
    usage
fi



echo -n "$1 "
read input

while [ $input != $2 ] && [ $input != $3 ]; do
    echo -n "$1 "
    read input
done

if [ $input = $2 ]; then
    exit 0
else
    exit 1
fi
