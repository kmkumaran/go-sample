FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app
RUN go get -d
RUN go build -o main . 
RUN echo "Hello-world" 
CMD ["/app/main"]
EXPOSE 80
