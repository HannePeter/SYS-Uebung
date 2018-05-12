# Schreiben Sie ein Bash-Skript sysinfo.sh welches die folgenden Systeminfor-
# mationen ausgibt.
# - CPU (Name und Taktung)
# - Gesamter und freier Arbeitsspeicher
# - Größe und verfügbarer Platz der „/ “-Partition
# - Größe und verfügbarer Platz der „/home “-Partition (falls vorhanden)
# - Die Anzahl laufender Prozesse
# - Name des laufenden Betriebssystems inklusive Kernelversion

#!/bin/bash

echo "CPU:           $(lscpu | grep "Model name" | tr -s " " | cut -d" " -f3-)"

echo "RAM:           total: $(free -m | grep Mem | tr -s " " | cut -d" " -f2) MeBi"
echo "               free:  $(free -m | grep Mem | tr -s " " | cut -d" " -f4) MeBi"

echo "ROOT:          total: $(df -h / | grep / | tr -s " " | cut -d" " -f2 ) Gibi"
echo "               free:  $(df -h / | grep / | tr -s " " | cut -d" " -f4 ) Gibi"

echo "HOME:          total: $(df -h | grep /home | tr -s " " | cut -d" " -f2 ) Gibi"
echo "               free:  $(df -h | grep /home | tr -s " " | cut -d" " -f4 ) Gibi"

echo "Anz. Prozesse: $(ps -e | wc -l)"

echo "OS/Kernel:     $(uname -o) ($(uname -r))"
