#!/bin/bash
cd /home/container

MODIFIED_STARTUP=$(eval echo "$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')")
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run BeamMP and monitor for shutdown, but ignore chat messages
eval ${MODIFIED_STARTUP} 2>&1 | while IFS= read -r line; do
    echo "$line"
    
    # Look for shutdown message, but NOT if the line contains [CHAT]
    if echo "$line" | grep -q "\[INFO\] Shutdown\." && ! echo "$line" | grep -q "\[CHAT\]"; then
        (sleep 2; pkill -9 -f "BeamMP-Server" 2>/dev/null) &
    fi
done

# Suppress the "Killed" message
wait 2>/dev/null

exit 0
