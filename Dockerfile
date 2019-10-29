#specify the base image. Alpine is lightweight version and doesn't contain other unneccasary applications.
FROM node:alpine

#changing the directory inside the container to /usr/app since we don't want to override any files
#inside the container with our files.
WORKDIR /usr/app

#since npm install just needs package.json to run, we are copying this first. This is helpful because if we will make
#any change to the index.js file, we need not to install the dependencies again. Now this will only run if there is 
#a change in package.json file or any step above it and otherwise use cache.
COPY ./package.json ./

#install the dependencies
RUN npm install

#copying files from local to container.
COPY ./ ./

#default command
CMD [ "npm", "start" ]