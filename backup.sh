# Schreiben Sie ein Shell-Skript, welche Dateien wie im Folgenden beschrieben ko-
# piert. Als Kommandozeilenparameter soll ein Postfix (Dateiendung) übergeben
# werden. Es sollen nur Datei aus dem aktuellen Verzeichnisse mit dem gleichen
# Postfix kopiert werden. Bei jeder zu kopierenden Datei soll der Benutzer gefragt
# werden, ob diese gesichert werden soll. Bei einer Bejahung soll diese Datei in
# das Verzeichnis backup kopiert werden. Falls dieses Verzeichnis nicht existiert
# soll es angelegt werden.



#!/bin/bash

usage ()
{
    echo "Usage: $0 <file-postfix>" >&2
    exit 1
}

if [ $# -ne 1 ]; then
    usage
fi



backuppostfix=$1
files=$(ls)

echo "- $backuppostfix - $files -"

for file in $files; do                                                          # Dateien im Verzeichnis durchgehen

    filepostfix=$(echo $file | cut -d"." -f2)                                   # Dateipostfix feststellen und mit vorgegebenen postfix vergleichen
    if [ $filepostfix == $backuppostfix ]; then

        echo -n  "Moechten Sie die Datei $file sichern? (j/n): "                # abfrage, ob gesichert werden soll
        read input
        while [ -z "$input" ] || [ "$input" != "j" -a "$input" != "n" ]; do
            echo -n  "Moechten Sie die Datei $file sichern? (j/n): "
            read input
        done

        if [ $input == "j" ]; then                                              # Wenn ja:
            if [ ! -e backup ]; then                                            # Verzeichnis erstellen, wenn nicht vorhanden
                mkdir backup
                echo 'Verzeichnis "backup" wurde erstellt'
            fi

            if [ -d backup ]; then                                              # Wenn backup ein Verzeichnis ist -> Datei sichern
                echo "Erstelle Backup von $file"
                cp ./$file backup/$file
            else
                echo 'Die Datei "backup" ist kein Verzeichnis"' >&2
            fi
        fi
    fi
done
