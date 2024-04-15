FROM	debian:bullseye

# Install nginx and SSL
RUN apt-get update -y && apt-get install -y nginx openssl

# Create keypair for SSL
RUN openssl req -x509 -nodes -sha256 -days 365 -newkey rsa:4096 \
	-out /etc/ssl/certs/nginx.crt \
	-keyout /etc/ssl/private/nginx.key \
	-subj "/C=FI/ST=Helsinki/L=Helsinki/O=tfinni/OU=tfinni/CN=tfinni/"
   
COPY  ./conf/nginx.conf /etc/nginx/conf.d

# Containers listens port 443
EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
