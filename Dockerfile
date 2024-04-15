FROM alpine

RUN apk add wget

RUN apk add unzip

RUN wget wget -O- https://releases.hashicorp.com/terraform/1.8.0/terraform_1.8.0_linux_arm64.zip

RUN unzip terraform_1.8.0_linux_arm64.zip

RUN ls -al

RUN ls -al terraform

EXPOSE 80