# use small node image
FROM node:alpine

# install git ca-certificates openssl openssh for CircleCI
# install jq for JSON parsing
RUN apk add --update --no-cache git openssh ca-certificates openssl jq gettext xmlstarlet curl zip

# install latest sfdx from npm
RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core
ADD install.sh /home/node/install.sh
RUN chmod +x /home/node/install.sh
# revert to low privilege user
USER node
WORKDIR /home/node/

RUN /home/node/install.sh
RUN sfdx plugins --core