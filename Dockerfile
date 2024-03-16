FROM golang:1.17

WORKDIR /app
COPY . /app

RUN go build -o main .

EXPOSE 9091

CMD ["/app/main"]