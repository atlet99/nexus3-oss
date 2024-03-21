FROM nginx:alpine3.18
#nginx version 1.25.4

RUN apk update && \
    apk add --no-cache openssl \

RUN mkdir -p /etc/nginx/external; \
    openssl req -x509 -newkey rsa:4096 \
    -subj "/C=KZ/ST=Almaty obl./L=Almaty/O=JSC MSBOOK TEST KZ/CN=nexus-repository" \
    -keyout "/etc/nginx/external/key.pem" \
    -out "/etc/nginx/external/cert.pem" \
    -days 1095 -nodes -sha256; \
    openssl -out "/etc/nginx/external/dhparam.pem" 4096 ; \
    openssl rand 80 > /etc/nginx/external/ticket.key

COPY nginx.conf /etc/nginx/nginx.conf