FROM node:12-alpine
WORKDIR /app
ADD ./src .
ADD bin/ffmpeg /usr/local/bin/
ADD package*.json ./
ADD tsconfig.json ./

RUN npm ci
RUN npm run build

CMD [ "npm", "run", "start" ]