#!/bin/bash
GOOS=darwin GOARCH=amd64 go build -o binaries/monty-osx-arm64
GOOS=linux GOARCH=arm64 go build -o binaries/monty-linux-arm64
GOOS=linux GOARCH=amd64 go build -o binaries/monty-linux-amd64
GOOS=linux GOARCH=386 go build -o binaries/monty-linux-386
GOOS=windows GOARCH=386 go build -o binaries/monty-windows-386.exe
GOOS=windows GOARCH=amd64 go build -o binaries/monty-windows-amd64.exe
