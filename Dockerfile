#Base image
FROM node:alpine

#Working directory
WORKDIR /opt/app/

#Dependencies 
COPY package.json .
RUN npm install
COPY index.js .


#Startup command
CMD ["npm", "start"]

