#Specify a base Image
FROM node:alpine

#add working dir
WORKDIR /usr/app
#Copy Package.json file to working dir
COPY ./package.json ./
#install Some dependencies 
RUN npm install
#Copy working Dir to Container Dir
COPY ./ ./

#default command
CMD ["npm","start"]