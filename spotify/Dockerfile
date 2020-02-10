# Secure Raspberry Pi base from Balena
FROM balenalib/raspberry-pi-debian:buster

# Install packages
RUN curl -sSL https://dtcooper.github.io/raspotify/key.asc | apt-key add -v - 2> /dev/null \
  && echo 'deb https://dtcooper.github.io/raspotify raspotify main' | tee /etc/apt/sources.list.d/raspotify.list \
  && install_packages raspotify

# Config files
ADD ./asound.conf /etc/asound.conf
COPY start.sh /usr/src/

# Run start script
CMD [ "/bin/bash", "/usr/src/start.sh" ]
