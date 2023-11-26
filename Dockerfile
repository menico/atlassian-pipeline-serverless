FROM node:18-alpine

# Install packages
RUN apk update && apk add --update --no-cache \
    git \
    bash \
    curl \
    openssh \
    python3 \
    py3-pip \
    py-cryptography \
    wget \
    jq \
    curl

RUN apk --no-cache add --virtual builds-deps build-base python3


# Install AWSCLI
RUN pip install --upgrade pip && \
    pip install --upgrade awscli

# Install Serverless Framework
RUN npm install -g serverless

LABEL org.opencontainers.image.source="https://github.com/menico/atlassian-pipeline-serverless"
