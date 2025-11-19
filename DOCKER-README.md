# Gestione Network IBFT con Docker

## Avvio dei nodi

Per avviare tutti i nodi:
```bash
docker-compose up -d
```

Per avviare in foreground e vedere i log:
```bash
docker-compose up
```

## Stop dei nodi

Per fermare i nodi senza rimuovere i container:
```bash
docker compose stop
```

Per riavviarli dopo lo stop:
```bash
docker compose start
```

Per fermare E rimuovere i container:
```bash
docker compose down
```

## Visualizzare i log

Tutti i nodi:
```bash
docker-compose logs -f
```

Un singolo nodo:
```bash
docker-compose logs -f node-1
```

## Stato dei container

```bash
docker-compose ps
```

## Da Docker Desktop

1. **Avvio**: Apri Docker Desktop → Containers → Clicca il pulsante Play su "ibft-network"
2. **Stop**: Clicca il pulsante Stop
3. **Log**: Clicca sul nome del container per vedere i log in tempo reale
4. **Restart**: Clicca su Restart per riavviare un singolo nodo

## Note

- I dati dei nodi sono montati da `./Node-X/data` quindi sono persistenti
- I log sono disponibili anche in `./logs/` (oltre ai log Docker)
- Le porte RPC sono esposte su localhost:
  - Node-1: http://localhost:8545
  - Node-2: http://localhost:8546
  - Node-3: http://localhost:8547
  - Node-4: http://localhost:8548
