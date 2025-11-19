#!/bin/bash
mkdir -p logs

BOOTNODE="enode://d6a3a179f660e2b6c6fd8ebd53168d618bce9d4d1b6e837a48d3332678c6a3dfe17c78c14649d55f4659ff21d7047884b13312dbc8b786409b36dbaa40371994@127.0.0.1:30303"

echo "Avvio Node-1..."
cd Node-1
nohup besu --data-path=data --genesis-file=../genesis.json --data-storage-format=FOREST --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN --host-allowlist="*" --rpc-http-cors-origins="all" --profile=ENTERPRISE > ../logs/node1.log 2>&1 &
cd ..
sleep 2

echo "Avvio Node-2..."
cd Node-2
nohup besu --data-path=data --genesis-file=../genesis.json --data-storage-format=FOREST --bootnodes=$BOOTNODE --p2p-port=30304 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-port=8546 --profile=ENTERPRISE > ../logs/node2.log 2>&1 &
cd ..
sleep 2

echo "Avvio Node-3..."
cd Node-3
nohup besu --data-path=data --genesis-file=../genesis.json --data-storage-format=FOREST --bootnodes=$BOOTNODE --p2p-port=30305 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-port=8547 --profile=ENTERPRISE > ../logs/node3.log 2>&1 &
cd ..
sleep 2

echo "Avvio Node-4..."
cd Node-4
nohup besu --data-path=data --genesis-file=../genesis.json --data-storage-format=FOREST --bootnodes=$BOOTNODE --p2p-port=30306 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-port=8548 --profile=ENTERPRISE > ../logs/node4.log 2>&1 &
cd ..

echo "Tutti i nodi sono stati avviati. Logs in ./logs/"
