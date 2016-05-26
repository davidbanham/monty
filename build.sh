#!/bin/bash
GOOS=darwin GOARCH=amd64 go build -o monty-osx-arm64
GOOS=linux GOARCH=arm64 go build -o monty-linux-arm64
GOOS=linux GOARCH=amd64 go build -o monty-linux-amd64
GOOS=linux GOARCH=386 go build -o monty-linux-386
GOOS=windows GOARCH=386 go build -o monty-windows-386.exe
GOOS=windows GOARCH=amd64 go build -o monty-windows-amd64.exe
