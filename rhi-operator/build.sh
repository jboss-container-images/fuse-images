#!/bin/sh

cd /remote-source
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o manager main.go
