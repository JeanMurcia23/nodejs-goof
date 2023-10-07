# FROM node:6-stretch
FROM node:18.13.0

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN apt-get update && apt-get install -y libwebp=0.6.1-2.1+deb11u2
RUN npm update
RUN npm install
EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
