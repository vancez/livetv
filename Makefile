all: amd64 arm64

amd64:
	CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -o livetv.amd64

arm64:
	CC=aarch64-linux-gnu-gcc CGO_ENABLED=1 GOOS=linux GOARCH=arm64 go build -o livetv.arm64

