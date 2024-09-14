# Base Image Node Js V.20
FROM node:20

# directory save code
WORKDIR /NuxtApp/app

# coppy package.json and package-lock.json into container
# COPY package*.json ./

# coppy codde into container
COPY . .

# install dependency
RUN npm install

# Build code
RUN npm run build

# config port
EXPOSE 3000

# run command Application nuxt
# CMD [ "npm", "run", "preview" ]
CMD ["node", ".output/server/index.mjs"]
