FROM golang:1.18

WORKDIR /usr/src/app

EXPOSE 8000

COPY . .
RUN go mod download && go mod verify
RUN go build -v -o /usr/local/bin/app ./...

CMD ["app"]
