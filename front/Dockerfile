FROM node:7

WORKDIR /app

#RUN wget https://github.com/dds-project-f19/dds-frontend/blob/master/package.json
#RUN wget https://raw.githubusercontent.com/dds-project-f19/dds-frontend/master/package.json
RUN git clone https://github.com/dds-project-f19/dds-frontend.git .
RUN npm install
#RUN rm package.json
#COPY . /app
#RUN git clone https://github.com/dds-project-f19/dds-frontend.git

# RUN mv dds-frontend/* .

RUN npm run build:prod

EXPOSE 8080

CMD npm run prod

# EXPOSE 8080
