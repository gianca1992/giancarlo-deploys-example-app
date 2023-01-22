#instead of node:latest I will pin to a specific version so that any redeployment won't pull updated images which may cause conflicts 
FROM node:19.4.0

#to copy the working dir . (copy everything in build context dir) into the working dir of the image .
COPY . .

#to run shell commands in the image, in this case just one 
RUN npm install 

#port the container will listen to
EXPOSE 8000

#CMD tells docker to run the commands when starting container, in this case it will start the node server 
CMD nmp start 

