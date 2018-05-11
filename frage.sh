# Schreiben Sie ein Shellskript frage.sh, welches als Parameter drei Strings über-
# nimmt. Der erste Kommandozeilenparameter soll als Frage gestellt werden. Die
# mögliche ’Ja’ Antwort soll als zweiter Parameter und mögliche ’Nein’ Antwort
# als dritte Parameter übergeben werden. Wenn keine passende Antwort angege-
# ben wird, soll die Frage wiederholt werden.
# - Falls eine Antwort in dem möglichen ’Ja’ beantwortet wird, soll der Wert
#   zurückgeliefert werden,
# - falls die mögliche ’Nein’ Antwort angegeben wird soll eine 1 zurückgeliefert
#   werden.

# Beispiel
# $ ./frage.sh "Noch einen Kaffee ? " "Ja" "Nein"