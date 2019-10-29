#specify the base image. Alpine is lightweight version and doesn't contain other unneccasary applications.
FROM node:alpine

#Copying index.js and package.json in the container (from cuurent workdir of webappt to current working dir of container).
COPY ./ ./

#install the dependencies
RUN npm install

#default command
CMD [ "npm", "start" ]