#!/bin/bash
cd /home/container

echo "testing wsg guys"

# Replace Startup Variables
MODIFIED_STARTUP=$(eval echo "$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')")
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Function to forward signals to the server
forward_signal() {
    kill -TERM "$SERVER_PID" 2>/dev/null
}

# Set up signal trapping
trap forward_signal SIGTERM SIGINT

# Run the Server in background
eval ${MODIFIED_STARTUP} &
SERVER_PID=$!

# Wait for the server process to finish
wait $SERVER_PID
EXIT_CODE=$?

echo "Server exited with code ${EXIT_CODE}"
exit ${EXIT_CODE}
