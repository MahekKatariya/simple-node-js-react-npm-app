FROM node:12.18.1
 
WORKDIR .
 
COPY package.json package.json
 
RUN npm install
 
COPY . .
 
 RUN npm start &
# CMD [ "node", "server.js" ]
