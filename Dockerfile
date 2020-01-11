FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN mkdir -p frontend

COPY . .

EXPOSE 8000

CMD ["npm", "start"]

VOLUME /app