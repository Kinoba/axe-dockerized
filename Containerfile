FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y curl build-essential unzip

# Install Chrome for Selenium
RUN apt-get install -y chromium chromium-driver jq

# add nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# add @axe-core/cli globally
RUN npm install -g @axe-core/cli

WORKDIR /app
