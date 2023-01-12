# Set the shell to bash always
SHELL := /bin/bash

build-doc:
	nerdctl build . -f deploy/doc.Dockerfile -t crdsdev/doc:latest

build-gitter:
	nerdctl build . -f deploy/gitter.Dockerfile -t crdsdev/doc-gitter:latest

local-build-doc:
	go build -o doc -mod=readonly -v ./cmd/doc/main.go

run-doc:
	go run ./cmd/doc/main.go

.PHONY: build-doc build-gitter run-doc