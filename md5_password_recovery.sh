# Schreiben Sie ein Bash-Skript welches als ersten Paramter einer Wörterliste W
# (Textdatei mit einem Wort per Zeile) und als zweiten Paramter eine Liste von
# gehashten Passwörtern H übergeben bekommt. Das Programm soll für jedes
# Wort w ∈ W testen ob der zugehörige MD5-Hash in H enthalten ist. Falls ja
# soll, das Skript angeben wie oft das Passwort w verwendet wurde. Die Ausgabe
# der Passwörter soll nach Häufigkeiten sortiert sein.
# Verwenden Sie zum Bearbeiten der Aufgabe die Datei battlefield-hashes.md5
# (siehe Moodle). Es handelt sich hierbei um die MD5 Passworthashes von über
# 500.000 Battlefield-Spielern. :-)
#
# Beispiel
# $ cat word.list
# 12345678
# password
# $ ./md5_password_recovery word.list battlefield-hashes.md5
# hits,password,MD5 hash
# 710,"password",5f4dcc3b5aa765d61d8327deb882cf99
# 302,"12345678",25d55ad283aa400af464c76d713c07ad
#
# Hinweis: Der MD5-Hash eines Passworters lässt sich mit dem Programm md5sum
# berechnen.



#!/bin/bash

usage ()
{
    echo "usage: $0 <word-list> <hash-list>" >&2
    exit 1
}

if [ $# -ne 2 ]; then
    usage
fi



words=$(cat $1)

echo "hits,password,MD5 hash"

for word in $words; do

    pwhash=$(echo -n $word | md5sum | cut -c -32)
    counter=$(cat $2 | grep $pwhash | wc -l)

    echo "$counter,\"$word\",$pwhash" >> .md5passwordcache

done

sort -r .md5passwordcache
rm .md5passwordcache
