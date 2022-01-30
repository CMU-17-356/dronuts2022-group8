FROM node:alpine3.11
MAINTAINER <Group8>

# Change working directory
WORKDIR /usr/src/app

# Install App Dependencies
COPY package*.json ./
RUN npm install

# Copy App Source
COPY . .
#TODO Run any build scripts here

EXPOSE 80
CMD ["node", "src/app.ts"]
