FROM node
ENV HOME = /opt/app
RUN apt-get update && apt-get install htop
COPY package.json $HOME/
RUN npm install
COPY . $HOME/
CMD ["node", "server.js"]
