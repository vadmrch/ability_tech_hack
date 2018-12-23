FROM golang:latest
RUN mkdir /goapp
ADD backend /goapp
ENV CONN="mongodb://mongo:27017"
WORKDIR /goapp

RUN go get golang.org/x/crypto/bcrypt
RUN go get gopkg.in/mgo.v2
RUN go get gopkg.in/mgo.v2/bson


RUN go build -o main .

EXPOSE 3000
CMD ['/goapp/main']


