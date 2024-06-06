# Setup

1. Run `setup.sh` to create the directories for the services mounted to the container
2. Replace Parameter in `variables.env`
4. start container via `docker compose up -d`
5. To restart a specific Container execute `docker restart <containerID>`

# HA -> PSQL

1. Add the following to the `configuration.yaml` of Homeassistant
  
```
recorder:
  db_url: postgresql://<db_user>:<db_password>@192.168.0.91:5432/homeassistant
  db_retry_wait: 15
```

2. Restart HomeAssistant Container via `docker restart <containerId>`
3. check container logs if it was succesfull via `docker logs <containerId>`
