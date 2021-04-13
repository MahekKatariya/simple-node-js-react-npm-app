FROM node:12.18.1
 
WORKDIR .
 
COPY package.json package.json
 
RUN npm install
 
COPY . .

EXPOSE 3000
CMD [ "npm", "start
