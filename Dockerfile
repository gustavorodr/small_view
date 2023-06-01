FROM node:18

USER node
WORKDIR /home/node/
COPY . /home/node

COPY package.json .
COPY yarn.lock .
RUN yarn install

COPY . .

CMD ["yarn", "dev"]
