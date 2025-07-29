# syntax=docker/dockerfile:1

FROM ubuntu:noble

RUN mkdir /tmp/log
RUN echo "UTC" > /etc/timezone

RUN echo "1. Applying all aptitude updates to the base image."
RUN apt update
RUN apt dist-upgrade -y

RUN echo "2. Installing required utility packages." 
RUN DEBIAN_FRONTEND=noninteractive apt install ssh vim xvfb xrdp xorgxrdp lightdm -y

RUN echo "3. Installing desktop manager [mate]" 
RUN apt install ubuntu-mate-desktop -y --no-install-recommends

RUN echo "4. Copying emulator, system image and AVD into container"
COPY image/* /

RUN echo "4. Cleaning up"
RUN apt autoremove -y
RUN apt clean
RUN rm -rf /var/log/* /var/cache/apt/* /tmp/* /var/lib/apt/lists/*

RUN adduser avdock
RUN usermod --password avdock avdock

USER avdock

EXPOSE 5555
EXPOSE 3389
EXPOSE 22

RUN echo "Dat's all Folks!"

CMD /home/avdock/sbin/xrdp-docker