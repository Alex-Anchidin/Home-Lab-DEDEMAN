#!/bin/bash
echo "==============================="
echo "  Raport Monitorizare Server"
echo "==============================="
echo "Timp de functionare (UPTIME)"
uptime -p
echo ""

echo "Utilizare Spatiu Disk"
df -h / | grep /
echo ""
echo "Memorie RAM"
free -h
echo "
"
echo "Incarcare Procesor"
cat /proc/loadavg | awk '{print $1, $2, $3}'
echo ""

echo "Utilizatori Conectati in Prezent"
who
echo "Porturi deschise (Listening):"
ss -tuln
echo "============================================"
