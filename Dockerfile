FROM node:12.13.0-alpine
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY dist/ /opt/app/dist
COPY package.json .
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "start:prod" ]