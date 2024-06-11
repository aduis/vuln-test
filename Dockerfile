FROM golang:1.22-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . /app

RUN go build /app/cmd/web

EXPOSE 8080

CMD [ "/go-docker-demo" ]