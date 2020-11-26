#!/bin/sh

cd /
git clone https://code.engineering.redhat.com/gerrit/rhi-operator
cd rhi-operator
go mod download
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GO111MODULE=on go build -a -o manager main.go
