ARG AZCOPY_VERSION

FROM golang:1.13-alpine3.12 as build
ENV GOARCH=amd64 GOOS=linux
WORKDIR /azcopy
ARG AZCOPY_VERSION
RUN wget "https://github.com/Azure/azure-storage-azcopy/archive/v$AZCOPY_VERSION.tar.gz" -O src.tgz
RUN tar xf src.tgz --strip 1 \
 && go build -o azcopy \
 && ./azcopy --version

FROM alpine:3.12 as release
ARG AZCOPY_VERSION
LABEL name="docker-azcopy"
LABEL version="$AZCOPY_VERSION"
LABEL maintainer="Peter Dave Hello <hsu@peterdavehello.org>"
COPY --from=build /azcopy/azcopy /usr/local/bin
WORKDIR /WORKDIR
CMD [ "azcopy" ]
