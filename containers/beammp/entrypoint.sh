#!/bin/bash
cd /home/container

echo "testing wsg guys"

# Replace Startup Variables
MODIFIED_STARTUP=$(eval echo "$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')")
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Trap to handle cleanup after BeamMP exits
cleanup() {
    # Give it a moment to fully exit
    sleep 3
    # Force kill any remaining processes
    pkill -9 -f BeamMP-Server 2>/dev/null || true
    exit 0
}

trap cleanup EXIT

# Run the Server in foreground so it receives stdin
${MODIFIED_STARTUP}

# If we get here, the server exited, run cleanup
cleanup
