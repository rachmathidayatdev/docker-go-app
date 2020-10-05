FROM golang:latest

COPY main.go /app/main.go
COPY go.mod /app/go.mod
COPY go.sum /app/go.sum
#kalo pengen pake env file
# COPY .env /app/.env

WORKDIR /app

RUN go mod download

CMD ["go", "run", "main.go"]