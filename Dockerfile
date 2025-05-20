FROM node:23.11.1-alpine3.21

RUN mkdir /app
WORKDIR /app

COPY package*.json /app/
RUN npm install --only=production


COPY . . 

EXPOSE 3000

CMD [ "npm", "start" ]

