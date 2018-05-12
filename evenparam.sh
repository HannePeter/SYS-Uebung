# Schreiben Sie ein Shell-Skript evenparam.sh welches eine gerade Anzahl von
# Kommandozeilenparameter aufweist, es hat also die Syntax

#      evenparam.sh para1 para2 [ para3 para4 ] ...

# Das Skript soll eine Ausgabe der Form para1=para2, para3=para4, ... ge-
# nerieren.
# Geben Sie eine Usage-Meldung auf stderr aus und beenden Sie das Skript
# mit dem Rückgabewert 1, falls das Programm das Programm nicht sachgemäß
# aufgerufen wurde.


#!/bin/bash

isEven=$(($# % 2))

if [ $isEven -eq 0 ]; then
    parameter=$@
    loadFirst=0
    for element in $parameter; do
        if [ $loadFirst -eq 1 ]; then
            echo "$first = $element"
            loadFirst=0
        else
            first=$element
            loadFirst=1
        fi
    done
else
    echo "Es wird eine gerade Anzahl an Parametern benötigt" >&2 
    exit 1
fi
