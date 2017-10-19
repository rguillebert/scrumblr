FROM node

COPY . /scrumblr

WORKDIR /scrumblr
RUN npm install .

ENTRYPOINT node server.js --port 80 --redis redis://$REDIS_PORT_6379_TCP_ADDR:6379
EXPOSE 80
