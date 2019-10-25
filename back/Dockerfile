# Dockerfile for backend of project

FROM golang:latest as builder

# Dependencies
RUN go get -u github.com/go-sql-driver/mysql
RUN go get -u github.com/gin-gonic/gin
RUN go get -u github.com/jinzhu/gorm
RUN go get -u github.com/gin-contrib/cors

#WORKDIR $GOPATH/src/dds-backend
WORKDIR $GOPATH/src

RUN git clone https://github.com/dds-project-f19/dds-backend.git

# Build project
#RUN go build -a -o /app .
RUN go install dds-backend

# place executable and configs in confident location
WORKDIR /serv
RUN mv $GOPATH/bin/dds-backend . && \
    cp $GOPATH/src/dds-backend/config.yaml .

# Make result executable
# TODO: RUN chmod +x /app

######## Start a new stage from scratch ###########
FROM centos:latest 

WORKDIR /root/

COPY --from=builder /serv/* ./
RUN chmod +x dds-backend
#RUN sed -i '1idbaddress: db' config.yaml

# Inference
EXPOSE 9000
#CMD ["./dds-backend"]
ENTRYPOINT /root/dds-backend
