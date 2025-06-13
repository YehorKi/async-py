FROM node:hydrogen-alpine3.21

ENV APP_DIR=/opt/app

EXPOSE 8088

COPY ./NodeApp ${APP_DIR}

RUN apk upgrade --update && \
    cd ${APP_DIR} && \
    npm install

WORKDIR ${APP_DIR}
ENTRYPOINT ["node", "index.js"]
