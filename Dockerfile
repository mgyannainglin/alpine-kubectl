FROM alpine:latest
WORKDIR /usr/local/bin/
RUN apk --update add curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.21.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl .
RUN mkdir -p $HOME/.kube
COPY /example-k8sconfig /.kube/example-k8sconfig
RUN cp -i /.kube/example-k8sconfig $HOME/.kube/config
RUN chown $(id -u):$(id -g) $HOME/.kube/config
LABEL maintainer="yannainglin"

