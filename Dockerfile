FROM openjdk:8-jre-alpine
RUN apk update && apk add bash
WORKDIR /app
COPY jarfile-jar/app
EXPOSE 8090
