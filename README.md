# alpine-kubectl
Built the docker image with alpine linux for kubectl command

# Step by step guide
1. First download or clone this repo.
2. Go to downloaded directory.
3. Paste your kube-adm config to example-k8sconfig.
3. Docker build.
```
docker build -t alpine-kubectl:v1 .
```
4. Run the docker image that you built
```
docker run -it --name {name of container} -d alpine-kubectl:v1
```
5. Go to docker container shell
```
docker exec -it {name of container} /bin/sh
```
## Now you can access your k8s cluster from alpine container with kubectl command.
## In this way you can use this docker container as a jump host of your k8s cluster access.
