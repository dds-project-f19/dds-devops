FROM back:latest as back

######## Front building ###########################
# FROM node:10-jessie as front

# WORKDIR /app
# RUN git clone https://github.com/dds-project-f19/dds-frontend.git .
# RUN npm install
# RUN npm run build
FROM front:latest as front

######## Start a new stage from scratch ###########
FROM centos:latest

# Telegram secret for bot
#ARG tg_key=none
#ENV DDS_TELEGRAM_BOT_APIKEY=$tg_key

WORKDIR /root/

COPY --from=back /serv/ ./
RUN chmod +x dds-backend
COPY --from=front /app/build ./front/build/

# Inference
EXPOSE 9000
EXPOSE 8080
CMD ["/root/dds-backend", "-dbaddress", "db"]
# CMD ["/root/dds-backend"]
# ENTRYPOINT /root/dds-backend
