FROM hyperledger/besu:25.9.0

# Crea directory per i dati
RUN mkdir -p /opt/besu/data

WORKDIR /opt/besu

# Il genesis.json e i dati verranno montati come volumi
ENTRYPOINT ["besu"]
