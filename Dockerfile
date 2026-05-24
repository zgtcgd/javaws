FROM node:alpine

WORKDIR /app

ARG PORT=3000
ENV PORT=$PORT
EXPOSE $PORT

COPY app.jar ./
RUN apk update && \
    apk add --no-cache bash wget curl procps openjdk17

CMD ["java", "-jar", "app.jar"]
