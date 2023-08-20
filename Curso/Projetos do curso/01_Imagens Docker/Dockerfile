FROM node:14 

WORKDIR /scr 

COPY package*.json ./ 

RUN npm install 

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]