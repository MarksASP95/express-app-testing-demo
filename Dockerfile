FROM node:20

# Working directory
WORKDIR ~/app

# copy package.json
COPY package*.json ./

# install files
RUN npm i

# copy source files
COPY . .

# expose the API port
EXPOSE 3000

CMD ["npm", "start"]