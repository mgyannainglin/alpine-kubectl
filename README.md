# alpine-kubectl
alpine linux with kubectl command

Built the docker image with alpine linux for kubectl command 

## Docker build
```
docker build -t alpine-kubectl:v1 .
```

## Run the docker image that you built
```
docker run -it --name {name of container} -d alpine-kubectl:v1
```
## Go to docker container shell
```
docker exec -it {name of container} /bin/sh
```
## Now you can access your k8s cluster from alpine container
