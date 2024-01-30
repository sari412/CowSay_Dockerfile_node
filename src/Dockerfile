FROM node:21.4.0

WORKDIR /home/node/app

# RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

# ADD http://api.internal.netfree.link/ca/netfree-ca.crt /usr/local/share/ca-certificates/netfree-ca.crt

# RUN update-ca-certificates

# ENV NODE_EXTRA_CA_CERTS /etc/ssl/certs/ca-certificates.crt
# ENV NODE_EXTRA_CA_CERTS /etc/ssl/certs/ca-certificates.crt
# ENV REQUESTS_CA_BUNDLE /etc/ssl/certs/ca-certificates.crt
# ENV SSL_CERT_FILE /etc/ssl/certs/ca-certificates.crt

COPY package*.json ./

RUN npm install

COPY  . . 

EXPOSE 8080

ENTRYPOINT [ "./entry-point.sh" ]