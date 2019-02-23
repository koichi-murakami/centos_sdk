# K6 SDK

`Dockerfile` for creating base images for K6 SDK

## Images

* `centos7`: CentOS7 K6 SDK
* `ubuntu18` : Ubuntu 18.04 LTS K6 SDK

## How to build docker images

~~~
# ./build_image.sh
~~~

## Docker Hub Auto Build
This repository is linked to docker hub. When a new Dockerfile is pushed, 
a process building a correspondig docker image is triggered.

