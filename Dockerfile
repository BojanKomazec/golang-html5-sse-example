FROM golang:1.8

WORKDIR /go/src/server
COPY . .
COPY ./templates /go/bin/templates/

# download and install all named packages and their dependencies
RUN go get -d -v ./...

RUN go install -v ./...
RUN ls -Rla /go

# server is running on port 8000, use "-p 8000:8000" with "docker run"
EXPOSE 8000

CMD ["server"]
