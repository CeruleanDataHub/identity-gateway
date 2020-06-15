FROM --platform=$TARGETPLATFORM node:8-alpine

ARG TARGETPLATFORM

WORKDIR /app/

COPY package*.json ./

RUN npm install --production

COPY *.js ./

USER node

CMD ["node", "app.js"]
