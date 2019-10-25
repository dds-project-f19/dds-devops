# Dockerfile for backend of project

FROM golang:latest

# Dependencies
RUN go get -u github.com/go-sql-driver/mysql
RUN go get -u github.com/gin-gonic/gin
RUN go get -u github.com/jinzhu/gorm
# RUN go get -u github.com/dds-project-f19/dds-backend

WORKDIR $GOPATH/src/dds-backend
RUN git clone https://github.com/dds-project-f19/dds-backend.git .

# Build project
RUN mkdir /app
RUN go build -a -o /app .

# Make result executable
RUN chmod +x /app

# Inference
EXPOSE 9000
CMD ["/app/dds-backend"]
#ENTRYPOINT ["/app"]
