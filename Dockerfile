FROM python:alpine
LABEL org.opencontainers.image.source https://github.com/mariusbertram/mkdocs-builder
RUN which ssh-agent || apk add --no-cache openssh
RUN which rsync || apk add --no-cache rsync
RUN apk add --no-cache py-configobj libusb py-pip gcc linux-headers musl-dev libffi-dev zlib-dev jpeg-dev cairo-dev pango-dev gdk-pixbuf git
RUN pip install mkdocs mkdocs-material
