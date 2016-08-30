package = github.com/dcu/mongodb_exporter

.PHONY: install release test

install:
	go get -t -v ./...

release:
	mkdir -p release
	GOOS=linux GOARCH=amd64 go build -o mongodb_exporter $(package)

test:
	go test -v -cover ./...
