# docker-edgetpu-compiler

The [Edge TPU Compiler](https://coral.ai/docs/edgetpu/compiler/) (edgetpu_compiler) is a command line tool that compiles a TensorFlow Lite model (.tflite file) into a file that's compatible with the Edge TPU (_edgetpu.tflite).

Because the Edge TPU compiler currently only runs on Debian based Linux systems, we can run the compiler through a Docker container instead when on Windows or MacOS.

## Requirements

- [Docker](https://docs.docker.com/install/)

Verify that Docker is installed by running command:

```sh
docker version
```

This container has been tested and verified on Windows 10 and Docker CE 19.03.8

## How to run

Build the container image

```sh
docker build --tag edgetpu_compiler https://github.com/tomassams/docker-edgetpu-compiler.git
```


