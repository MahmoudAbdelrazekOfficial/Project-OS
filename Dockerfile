FROM node:14-alpine

WORKDIR /data

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000
EXPOSE 443


#volumes: ['./:/var/www/html']

CMD ["npm", "data.js"]