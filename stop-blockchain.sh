#!/bin/bash

# Stop script for the 4-node Besu network
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

for i in 1 2 3 4; do
  DATADIR="$ROOT_DIR/Node-$i/data"
  
  pids=$(pgrep -f "$DATADIR" || true)
  
  if [ -n "$pids" ]; then
    echo "Stopping Node-$i (PID: $pids)"
    echo "$pids" | xargs -r kill
  else
    echo "Node-$i non è in esecuzione"
  fi
done

echo "Tutti i nodi sono stati fermati"
