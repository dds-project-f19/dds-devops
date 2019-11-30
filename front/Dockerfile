FROM node:10-jessie as front

WORKDIR /app
RUN git clone https://github.com/dds-project-f19/dds-frontend.git .
RUN npm install
RUN npm run build
EXPOSE 8080
