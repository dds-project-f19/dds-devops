FROM node:10-jessie as front

ARG back_url=localhost:9000
ENV placeholder="this.proxy=\"$back_url\""

WORKDIR /app
RUN git clone https://github.com/dds-project-f19/dds-frontend.git .
RUN npm install -g json && json -I -f package.json -e $placeholder
RUN npm install
RUN npm run build
EXPOSE 8080
