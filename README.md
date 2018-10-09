# Übung Systemprogrammierung

Laborübung zur Vorlesung "Systemprogrammierung"



## Benutzung

Script ausführbar machen

```
chmod 774 <name>.sh
```

Script ausführen

```
./<name>.sh
```



## Aufgabenbeschreibungen

### Übungsblatt 3

```
1.  Schreiben Sie ein Shell-Skript count.sh,
    das die Anzahl der übergebenen Kommandozeilenparameter ausgibt.
```

```
2.  Schreiben Sie ein Bash-Skript sysinfo.sh, 
    welches die folgenden Systeminformationen ausgibt:

        -CPU (Name und Taktung)
        -Gesamter und freier Arbeitsspeicher
        -Größe und verfügbarer Platz der „/ “-Partition
        -Größe und verfügbarer Platz der „/home “-Partition (falls vorhanden)
        -Die Anzahl laufender Prozesse
        -Name des laufenden Betriebssystems inklusive Kernelversion
```

```
3.  Schreiben Sie ein Shellskript frage.sh,
    welches als Parameter drei Strings übernimmt. Der erste Kommandozeilenparameter
    soll als Frage gestellt werden. Die mögliche ’Ja’ Antwort soll als zweiter
    Parameter und mögliche ’Nein’ Antwort als dritte Parameter übergeben werden.
    Wenn keine passende Antwort angegeben wird, soll die Frage wiederholt werden.

        - Falls eine Antwort in dem möglichen ’Ja’ beantwortet wird,
          soll der Wert 0 zurückgeliefert werden,

        - Falls die mögliche ’Nein’ Antwort angegeben wird,
          soll eine 1 zurückgeliefert werden.
```

```
4.  Schreiben Sie ein Bash-Skript int2bin.sh,
    welches eine übergeben Ganzzahl als Bitstring ausgibt.
```

```
5.  Schreiben Sie ein Shell-Skript evenparam.sh,
    welches eine gerade Anzahl von Kommandozeilenparameter aufweist.
    Es hat also die Syntax:
    
        - evenparam.sh para1 para2 [ para3 para4 ] ...
        
    Das Skript soll eine Ausgabe der Form para1=para2, para3=para4, ... generieren.

    Geben Sie eine Usage-Meldung auf stderr aus und beenden Sie das Skript mit
    dem Rückgabewert 1, falls das Programm das Programm nicht sachgemäß aufgerufen wurde.
```

```
6.  Schreiben Sie ein Shell-Skript last2.sh,
    das nur die letzten beiden Kommandozeilenparameter ausgibt.
```



### Übungsblatt 4

```
1.  Schreiben Sie ein Shell-Skript backup.sh,
    welches Dateien wie im Folgenden beschrieben kopiert. Als Kommandozeilenparameter
    soll ein Postfix (Dateiendung) übergeben werden. Es sollen nur Datei aus dem
    aktuellen Verzeichnisse mit dem gleichen Postfix kopiert werden. Bei jeder zu 
    kopierenden Datei soll der Benutzer gefragt werden, ob diese gesichert werden soll.
    Bei einer Bejahung soll diese Datei in das Verzeichnis 'backup' kopiert werden.
    Falls dieses Verzeichnis nicht existiert soll es angelegt werden.
```

```
2.  Schreiben Sie ein Shell-Skript rls.sh mit der Syntax 'rls.sh <min> <max>'.
    Das Skript soll alle Dateien im aktuellen Verzeichnis auflistet, deren Namen
    eine Länge von mindestens <min> Zeichen UND weniger als <max> Zeichen hat.
    Geben Sie eine Usage-Meldung auf stderr aus und beenden Sie das Skript mit dem
    Rückgabewert 1, falls das Programm das Programm nicht sachgemäß aufgerufen wurde.
```

```
3.  Schreiben Sie ein Shell-Skript premv.sh <old-prefix> <new-prefix>,
    welches bei allen Dateinamen im aktuellen Verzeichnis, die mit Präfix
    'old-prefix' beginnen, durch den Präfix 'new-prefix' ersetzt.
    
        Beispiel:
        
        $ ls
        foo.dat foobar premv.sh  test.txt
        $ ./premv.sh foo zzz
        $ ls
        premv.sh test.txt zzz.dat zzzbar
```

```
4.  Schreiben Sie ein Bash-Skript md5_password_recovery.sh,
    welches als ersten Paramter eine Wörterliste (Textdatei mit einem Wort per Zeile)
    und als zweiten Paramter eine Liste von gehashten Passwörtern übergeben bekommt.
    Das Programm soll für jedes Wort testen, ob der zugehörige MD5-Hash in enthalten ist.
    Falls ja, soll das Skript angeben, wie oft das Passwort verwendet wurde.
    Die Ausgabe der Passwörter soll nach Häufigkeiten sortiert sein.

    Verwenden Sie zum Bearbeiten der Aufgabe die Datei battlefield-hashes.md5.
    Es handelt sich hierbei um die MD5 Passworthashes von über 500.000 Battlefield-Spielern. :-)

        Beispiel:
        
        $ cat word.list
        12345678
        password
        $ ./md5_password_recovery word.list battlefield-hashes.md5
        hits,password,MD5 hash
        710,"password",5f4dcc3b5aa765d61d8327deb882cf99
        302,"12345678",25d55ad283aa400af464c76d713c07ad
```

```
5.  Schreiben Sie ein Bash-Skript nxls.sh <directory>,
    welches in dem übergebenen Verzeichnis 'directory' nur
    regulärer Dateien anzeigt, welche nicht ausfühbar sind.
```

```
6.  Schreiben Sie ein Bash-Skript calc.sh <int> <operator> <int>,
    welches als Taschenrechner fungieren soll. Es sollen die folgenden Operatoren
    unterstützt werden: MULT, ADD, SUB, DIV, MOD und EXP.
    Verwenden Sie die Case-Anweisung.
    
        Beispielaufrufe:
        
        $ ./calc.sh 10 ADD 3
        13
        $ ./calc.sh 10 EXP 3
        1000
        $ ./calc.sh 10 MULT 3
        30
```
