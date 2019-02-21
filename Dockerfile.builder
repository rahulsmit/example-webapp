#This is a docker builder file
#Start from openjdk v8 docker image with basic java dev kit
FROM openjdk:8
RUN echo 1
#Update that image's local packer cache and install curl
RUN apt-get update && apt-get install  -y curl
#use curl to fetch the build too lein for clojure
RUN curl -o /usr/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN chmod +x /usr/bin/lein
