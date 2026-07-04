.PHONY: build clean

BIN_DIR := bin

build: \
	bin/cli-darwin-amd64 \
	bin/cli-darwin-arm64 \
	bin/cli-linux-amd64 \
	bin/cli-linux-arm64 \
	bin/cli-windows-amd64.exe \
	bin/cli-windows-arm64.exe

bin/cli-darwin-amd64:
	GOOS=darwin GOARCH=amd64 go build -o $@ ./src

bin/cli-darwin-arm64:
	GOOS=darwin GOARCH=arm64 go build -o $@ ./src

bin/cli-linux-amd64:
	GOOS=linux GOARCH=amd64 go build -o $@ ./src

bin/cli-linux-arm64:
	GOOS=linux GOARCH=arm64 go build -o $@ ./src

bin/cli-windows-amd64.exe:
	GOOS=windows GOARCH=amd64 go build -o $@ ./src

bin/cli-windows-arm64.exe:
	GOOS=windows GOARCH=arm64 go build -o $@ ./src

clean:
	rm -rf $(BIN_DIR)
