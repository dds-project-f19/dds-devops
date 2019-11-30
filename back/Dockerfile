# Dockerfile a.k.a. Jack-on-all-the-hand builder

FROM golang:latest as builder

# Env var for go compiler
# ENV GO111MODULE=on

# Dependencies
RUN go get -u github.com/robfig/cron
RUN go get -u github.com/go-sql-driver/mysql
RUN go get -u github.com/gin-gonic/gin
RUN go get -u github.com/jinzhu/gorm
RUN go get -u github.com/gin-contrib/cors
RUN go get -u github.com/gin-contrib/static
RUN go get -u github.com/go-telegram-bot-api/telegram-bot-api

WORKDIR $GOPATH/src

#RUN git clone --single-branch --branch develop https://github.com/dds-project-f19/dds-backend.git
#RUN git clone --single-branch --branch master --recurse-submodules https://github.com/dds-project-f19/dds-backend.git
RUN git clone --single-branch --branch develop https://github.com/dds-project-f19/dds-backend.git


# Build project
RUN go install dds-backend

# place executable and configs in confident location
WORKDIR /serv
RUN mv $GOPATH/bin/dds-backend .
#  mv $GOPATH/src/dds-backend/front .
