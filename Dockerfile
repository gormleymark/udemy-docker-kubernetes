FROM node:alpine

WORKDIR /usr/src/app

# this is for layering and build efficiency purposes. if you make a change to the codebase only (index.js), npm install will not be run.
COPY ./package.json . 

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]