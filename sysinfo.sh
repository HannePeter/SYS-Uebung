# Schreiben Sie ein Bash-Skript sysinfo.sh welches die folgenden Systeminfor-
# mationen ausgibt.
# - CPU (Name und Taktung)
# - Gesamter und freier Arbeitsspeicher
# - Größe und verfügbarer Platz der „/ “-Partition
# - Größe und verfügbarer Platz der „/home “-Partition (falls vorhanden)
# - Die Anzahl laufender Prozesse
# - Name des laufenden Betriebssystems inklusive Kernelversion

#!/bin/bash

echo "CPU:           $(lscpu | grep "Model name" | cut -c 22-)"

echo "RAM:           total: $(free -m | grep Mem | cut -c 13-43) MeBi"
echo "               free:  $(free -m | grep Mem | cut -c 13-43)"

echo "ROOT:          $(df -h | grep "/dev/sda4")"

echo "HOME:          $(df -h | grep "/home")"

echo "Anz. Prozesse: $(ps -e | wc -l)"

echo "OS/Kernel:     $(uname -or)"
