FROM nginx:latest
RUN apt-get update && apt-get install -y \
    net-tools \
    iproute2 \
    vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/
COPY ./index.html /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]

