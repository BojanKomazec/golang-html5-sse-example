FROM golang:1.8

WORKDIR /go/src/server
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 8000

CMD ["server"]