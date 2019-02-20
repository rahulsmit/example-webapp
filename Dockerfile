FROM java:8-alpine
MAINTAINER RAHUL KUMAR <rahulsmit@mail.com>

ADD target/uberjar/example-webapp.jar /example-webapp/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/example-webapp/app.jar"]

