name: Docker Image CI

on:
    push:
        branches: [ "main" ]

jobs:

    runs on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3

    #- name: Build the Docker Image
    #  run: docker build . --file Dockerfile --tag my-image-name:$(date +%s)