# Schreiben Sie ein Bash-Skript calc.sh <int> <operator> <int> welches als
# Taschenrechner fungieren soll. Es sollen die folgenden Operatoren unterstützt
# werden: MULT, ADD, SUB, DIV, MOD und EXP. Verwenden Sie die Case-Anweisung.
#
# Beispielaufrufe
# $ ./calc.sh 10 ADD 3
# 13
# $ ./calc.sh 10 EXP 3
# 1000
# $ ./calc.sh 10 MULT 3
# 30



#!/bin/bash

usage ()
{
    echo "Usage: $0 <int> <operator> <int>" >&2
    exit 1
}

if [ $# -ne 3 ]; then
    usage
fi



case $2 in
    ADD) result=$(( $1 + $3 ));;
    SUB) result=$(( $1 - $3 ));;
    MULT) result=$(( $1 * $3 ));;
    DIV) result=$(( $1 / $3 ));;
    MOD) result=$(( $1 % $3 ));;
    EXP) result=$(( $1 ** $3 ));;
    *) echo "Unknown operator" >&2;echo "possible operators: MULT, ADD, SUB, DIV, MOD, EXP" >&2;;
esac

echo $result
