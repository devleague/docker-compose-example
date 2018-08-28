# Built from Node latest Alpine
FROM node:8.11-alpine

# Specify an optional argument with a default value
ARG appDirectory=/app

# ONLY copy over the package.json to install NPM packages
COPY package.json /app/.

# Install node module dependencies
RUN npm install --production

# Add the rest of the project files(most builds will start from here based on cache)
COPY . /app

# Set the app directory as the context for all commands and entry to the container
WORKDIR /app

# Start the node application as you normally would
CMD ["node", "app.js"]