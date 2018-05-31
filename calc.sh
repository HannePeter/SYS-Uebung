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


op1=$1
op2=$3
operator=$2

case $operator in
    ADD) result=$(( op1 + op2 ));;
    SUB) result=$(( op1 - op2 ));;
    MULT) result=$(( op1 * op2 ));;
    DIV) result=$(( op1 / op2 ));;
    MOD) result=$(( op1 % op2 ));;
    EXP) result=$(( op1 ** op2 ));;
    *) echo "Unknown operator";echo "possible operators: MULT, ADD, SUB, DIV, MOD, EXP" >&2
esac

echo $result
