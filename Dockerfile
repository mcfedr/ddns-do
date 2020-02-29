FROM digitalocean/doctl:1-latest

RUN ln -s /app/doctl /usr/bin/doctl

RUN apk --no-cache add bash bind-tools

COPY ddns-do /usr/local/bin/ddns-do

ENTRYPOINT ["/usr/local/bin/ddns-do"]
