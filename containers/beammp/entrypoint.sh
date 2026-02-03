#!/bin/bash
cd /home/container

echo "testing wsg guys"

# Replace Startup Variables
MODIFIED_STARTUP=$(eval echo "$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')")
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server in background
${MODIFIED_STARTUP} &
SERVER_PID=$!

# Wait for the server, but with a timeout for cleanup
wait $SERVER_PID

# After wait returns, give the process 5 seconds to fully exit
# If it's still hanging, force kill it
sleep 2
if kill -0 $SERVER_PID 2>/dev/null; then
    echo "Server still running after shutdown, forcing termination..."
    kill -9 $SERVER_PID 2>/dev/null
fi

echo "BeamMP process ended, script exiting..."
exit 0
