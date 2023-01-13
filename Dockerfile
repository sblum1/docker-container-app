FROM node:18
WORKDIR /home/node/app
# Copy app to Docker folder
COPY app /home/node/app
# Install dependencies; RUN vs CMD
# RUN: Executes when you build image
# CMD: Executes when you run instance of container from image
RUN npm install
# Runs app from coinciding command in package.json
CMD npm run app
