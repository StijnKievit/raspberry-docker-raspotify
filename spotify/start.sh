#!/usr/bin/env bash

# Set device name
DEVICE_NAME="Stijn music box"

# Set Spotify login
#SPOTIFY_LOGIN=""
#SPOTIFY_PASSWORD=""

# Set the system volume here
SYSTEM_OUTPUT_VOLUME="${SYSTEM_OUTPUT_VOLUME:-100}"

# Set the raspotify username and password
if [ ! -z "$SPOTIFY_LOGIN" ] && [ ! -z "$SPOTIFY_PASSWORD" ]; then
  SPOTIFY_CREDENTIALS="--username $SPOTIFY_LOGIN --password $SPOTIFY_PASSWORD"
  printf "%s\n" "Using Spotify login."
fi

# Start raspotify
exec /usr/bin/librespot  --name "$DEVICE_NAME" --backend alsa --bitrate 320 --cache /var/cache/raspotify --enable-volume-normalisation --linear-volume --initial-volume=$SYSTEM_OUTPUT_VOLUME $SPOTIFY_CREDENTIALS
