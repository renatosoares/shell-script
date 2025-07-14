#!/bin/bash

while true; do
    MEM_USO=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
    
    if [ "$MEM_USO" -gt 80 ]; then
        notify-send "Alerta de Memória" "Uso de memória acima de 80%: ${MEM_USO}%"
    fi

    sleep 30
done
