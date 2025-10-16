FROM nginx:latest
LABEL mainteiner="rafaldabrowski82@gmail.com"
RUN apt-get update && apt-get install -y \
    net-tools \
    iproute2 \
    vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/
VOLUME ["/data"]
EXPOSE 8080
STOPSIGNAL SIGINT

