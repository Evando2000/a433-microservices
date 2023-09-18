FROM node:14.21.3

WORKDIR /app
COPY . /app/
ENV NODE_ENV=production DB_HOST=item-db

RUN npm install --production --unsafe-perm && npm run build

EXPOSE 8080

RUN npm start

LABEL org.opencontainers.image.source=https://github.com/Evando2000/a433-microservices