FROM node
ENV HOME = /opt/app
RUN apt-get update
COPY package.json $HOME/
RUN npm install
COPY . $HOME/
WORKDIR $HOME
CMD ["node", "server.js"]
