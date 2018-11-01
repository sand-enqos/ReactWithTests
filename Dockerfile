FROM node:8

# Create app directory
WORKDIR /app/docker-compose build --no-cache

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copi$
# where available (npm@5+)
COPY package.json .

RUN npm install
# If you are building your code for production
# RUN npm install --only=production
#RUN apk add --update redis
# Bundle app source
COPY . .

CMD ["npm","start"]
