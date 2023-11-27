APP=$(shell basename $(shell git remote get-url origin))
REGESTRY=yevhensvyrydov
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux
TARGETARCH=amd64

format:
	gofmt -s -w ./

get:
	go get

build: format get
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${shell dpkg --print-architecture} go build -v -o kbot -ldflags "-X="github.com/Yevhenko/kbot/cmd.appVersion=${VERSION}

image: build
	docker build . -t ${REGESTRY}/${APP}:${VERSION}-${TARGETARCH}

push:
	docker push ${REGESTRY}/${APP}:${VERSION}-${TARGETARCH}

clean:
	rm -rf kbot
	IMG1=$$(docker images -q | head -n 1); \
	if [ -n "$${IMG1}" ]; then  docker rmi -f $${IMG1}; else printf "$RImage not found$D\n"; fi

linux: format get
	CGO_ENABLED=0 GOOS=arm GOARCH=${shell dpkg --print-architecture} go build -v -o kbot -ldflags "-X="github.com/Yevhenko/kbot/cmd.appVersion=${VERSION}

windows: format get
	CGO_ENABLED=0 GOOS=windows GOARCH=${shell dpkg --print-architecture} go build -v -o kbot -ldflags "-X="github.com/Yevhenko/kbot/cmd.appVersion=${VERSION}

arm: format get
	CGO_ENABLED=0 GOOS=windows GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.com/Yevhenko/kbot/cmd.appVersion=${VERSION}

macos: format get
	CGO_ENABLED=0 GOOS=ios GOARCH=${shell dpkg --print-architecture} go build -v -o kbot -ldflags "-X="github.com/Yevhenko/kbot/cmd.appVersion=${VERSION}
