#!/bin/bash

# Stop script for the 4-node Besu network
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Ferma tutti i processi besu attivi
pids=$(pgrep -f "besu" || true)
if [ -n "$pids" ]; then
  echo "Stopping all besu nodes (PID: $pids)"
  echo "$pids" | xargs -r kill
else
  echo "Nessun nodo besu in esecuzione"
fi

echo "Tutti i nodi sono stati fermati"
