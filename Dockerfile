FROM golang:alpine

WORKDIR /go/src/
COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .

RUN go build -o web ./cmd/web

# Export necessary port
EXPOSE 4000

# Command to run when starting the container
ENTRYPOINT ["/go/src/web","-dsn", "web:pass@tcp(host.docker.internal)/snippetbox?parseTime=true"]