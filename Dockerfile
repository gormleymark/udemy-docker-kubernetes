FROM node:alpine

WORKDIR /usr/src/app

COPY . .

#RUN npm config set strict-ssl false
RUN npm install
#RUN npm config set strict-ssl true

EXPOSE 3000

CMD ["npm", "run", "start"]