FROM centos:latest
#RUN apk update && apk --no-cache add curl
RUN yum -y update && yum -y install wget

ADD . /back

WORKDIR /back

#RUN curl -s https://api.github.com/repos/dds-project-f19/dds-backend/releases/latest | grep "browser_download_url.*" | cut -d '"' -f 4 | grep -E "*x64_linux*|*.yaml" | wget -qi -
RUN chmod +x /back/server_x64_linux
#RUN echo "dbaddress: db" > config.yaml
EXPOSE 9000

ENTRYPOINT /back/server_x64_linux

