FROM node:16.13.1-alpine3.14

RUN mkdir -p /home/nest-app

WORKDIR /home/nest-app

COPY package*.json /home/nest-app

RUN npm install

COPY . /home/nest-app

EXPOSE 3000

CMD ["npm", "run", "start:dev"]
