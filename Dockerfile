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

    - name: Log in to Docker Hub - Main web app container registry
      uses: docker/login-action@v1
      with:
        username: ${{ secrets.DOCKERUSERNAME }}
        password: ${{ secrets.DOCKERPASSWORD }}

    - name: Build and push Main web app container image to registry
      uses: docker/build-push-action@v2
      with:
        push: true
        tags: ${{ secrets.DOCKERUSERNAME }}/tools-image:v1.0
        file: ./Dockerfile