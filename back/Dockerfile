# Dockerfile a.k.a. Jack-on-all-the-hand builder

FROM golang:latest as builder

# Dependencies
RUN go get -u github.com/go-sql-driver/mysql
RUN go get -u github.com/gin-gonic/gin
RUN go get -u github.com/jinzhu/gorm
RUN go get -u github.com/gin-contrib/cors
RUN go get -u github.com/gin-contrib/static

#WORKDIR $GOPATH/src/dds-backend
WORKDIR $GOPATH/src

#RUN git clone --single-branch --branch develop https://github.com/dds-project-f19/dds-backend.git
#RUN git clone --single-branch --branch master --recurse-submodules https://github.com/dds-project-f19/dds-backend.git
RUN git clone --single-branch --branch master https://github.com/dds-project-f19/dds-backend.git

# Build project
RUN go install dds-backend

# place executable and configs in confident location
WORKDIR /serv
RUN mv $GOPATH/bin/dds-backend . 
#  mv $GOPATH/src/dds-backend/front .


######## Front building ###########################
FROM node:latest as front

WORKDIR /app
RUN git clone https://github.com/dds-project-f19/dds-frontend.git .
RUN npm install 
RUN npm run build

######## Start a new stage from scratch ###########
FROM centos:latest 

WORKDIR /root/

COPY --from=builder /serv/ ./
RUN chmod +x dds-backend
COPY --from=front /app/build ./front/build/

# Inference
EXPOSE 9000
EXPOSE 8080
#CMD ["/root/dds-backend"]
ENTRYPOINT /root/dds-backend
