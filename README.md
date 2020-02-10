A docker image for raspotify on the raspberry pi zero
===================================

Docker image with raspotify for the Raspberry Pi 1 / Pi zero (w). It uses the default ALSA sink and is configured for using an external audiocard.

This small docker project is based on the work of [dtcooper](https://github.com/dtcooper).
I created this project because I wanted to get started with Docker and docker-compose and coudn't find something that fitted my needs.

## Sources used in this project are listed below
* [Raspotify](https://github.com/dtcooper/raspotify)
* [Balena base image with debian](https://hub.docker.com/r/balenalib/raspberry-pi-debian)
* [Docker](https://docs.docker.com/)

## building the image and running the container
In the root of the project use:
```
  docker-compose up -d --build
```
## configuration
This section explains some of the configuration.

### Audio device
The configuration in this project uses an external audiocard. In order to use the internal audiocard you can chance the values of [spotify/asound.conf](spotify/asound.conf) to:
```
  defaults.pcm.card 0
  defaults.ctl.card 0
```
### Start script
In [start.sh](spotify/start.sh) you can edit the device name of the Spotify connect speaker as well as adding your Spotify premium credentials so you can access the speaker everywhere you go.

In the exec function some flags are already provided to increase the default bitrate and have volume normalization. These can be changed as described in the Raspotify project by DrCooper.

ENJOY!

### License
This project is licensed under the MIT License - see the [`LICENSE`](LICENSE)
file for details.

### Acknowledgments
Special thanks to [dtcooper](https://github.com/dtcooper) for [Raspotify](https://github.com/dtcooper/raspotify)
and also special thanks to [librespot](https://github.com/librespot-org/librespot) for making this possible in the first place!

### Donations
If you want to donate, I encourage you to donate either to dtcooper or librespot.
If you still insist you can donate using my PayPal.me page. https://paypal.me/StijnKievit
