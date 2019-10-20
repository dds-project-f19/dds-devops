FROM centos:latest
#RUN apk update && apk --no-cache add curl
RUN yum -y update && yum -y install wget

WORKDIR /back

RUN curl -s https://api.github.com/repos/dds-project-f19/dds-backend/releases/latest | grep "browser_download_url.*" | cut -d '"' -f 4 | wget -qi -
RUN chmod +x server_x64_linux
EXPOSE 9000

ENTRYPOINT /back/server_x64_linux

