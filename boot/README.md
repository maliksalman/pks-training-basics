# Spring Boot native application in Kubernetes

Spring boot application can be compiled to native binaries with bring lots of runtime performances improvements over JVM dependant applications. For this demo, we will try to build the following codebase as a spring-boot native compiled program that is bundled in an OCI container.

## Build the application

Clone the Git repository with the native-compile ready branch ...

```
git clone -b faster-with-native-compile https://github.com/maliksalman/boot-docker-support-sample.git
```


Verify that JDK 21 is present ...

```
javac --version
```

Verify that docker is available by running the following command to successfull completion:

```
docker ps
```

Create an OCI image that contains native compiled spring-boot application:

```
cd boot-docker-support-sample
bin/make-native-oci-image.sh
```

This will create an image in your local docker registry called `maliksalman/dockerdemo:native-1.0`. This can be verfied by running the following command:

```
docker images
```


