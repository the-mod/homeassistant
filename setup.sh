#!/bin/bash

# List of directories to be created
dirs=(
    "$HOME/home-assistant/ha_volume"
    "$HOME/home-assistant/esphome"
    "$HOME/home-assistant/zwave_volume"
    "$HOME/home-assistant/postgres"
    "$HOME/home-assistant/grafana"
    "$HOME/home-assistant/influxdb"
    "$HOME/home-assistant/mosquitto"
    "$HOME/home-assistant/nodered"
)

# Loop through the directories
for dir in "${dirs[@]}"; do
    if [ ! -d "$dir" ]; then
        echo "Creating directory $dir"
        mkdir -p "$dir"
    else
        echo "Directory $dir already exists"
    fi
done

echo "All directories processed."
