FROM golang:1.20.1

WORKDIR /go/src/github.com/globocom/secDevLabs/owasp-top10-2021-apps/a3/copy-n-paste/app

COPY app/go.mod app/go.sum ./
RUN go mod download

COPY app/ ./
