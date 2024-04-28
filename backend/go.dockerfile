FROM golang:1.16-alpine3.13

WORKDIR /app

COPY . .

# Download and install the dependancies : 
RUN go get -d -v ./...

# Build the go app
RUN go build -o api .

EXPOSE 8000

CMD ["./api"]