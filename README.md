# Local_Besu_Blockchain
Set up a local hyperledger Besu blockchain with the config file and start / stop commands

# Run the Nodes
From terminal run

```bash
./start-blockchain.sh
```

# Stop the Nodes
From terminal run

```bash
./stop-blockchain.sh
```

# Follow the logs of one or all Nodes
Just the last lines

```bash
tail logs/node1.log
```

Real-time logs

```bash
tail -f logs/node1.log
```

All the logs

```bash
tail -f logs/node*.log
```