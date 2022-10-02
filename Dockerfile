# pull oficial image
FROM node:16-alpine

# working directory
WORKDIR /app

# install dependecies
COPY package.json .
RUN npm install

# copy source code
COPY . .

# set env variable
ENV INSTANCE=0

# port
EXPOSE 3000

CMD ["npm", "start"]

