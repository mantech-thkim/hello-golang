FROM docker.io/golang:1.18-alpine

WORKDIR /app

COPY go.mod go.mod
COPY main.go main.go
RUN go mod download

RUN go build -o /hello

ENTRYPOINT ["/hello"]
