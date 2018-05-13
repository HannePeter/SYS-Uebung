# Schreiben Sie ein Shell-Skript last2.sh, das nur die letzten beiden Komman-
# dozeilenparameter ausgibt.


#!/bin/bash

parameter=$@

for element in $parameter; do
    beforeLast=$last
    last=$element
done

echo "Letzter Parameter:    $last"
echo "Vorletzter Parameter: $beforeLast"
