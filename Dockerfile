FROM golang:1.17

WORKDIR /app
COPY . /app

RUN go build -o main .

EXPOSE 9091
VOLUME /app/creds

CMD ["/app/main", "-hostDetails", "-httpDiscovery", "/app/creds/creds.json"]