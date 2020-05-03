# docker-edgetpu-compiler

The [Edge TPU Compiler](https://coral.ai/docs/edgetpu/compiler/) (edgetpu_compiler) is a command line tool that compiles a TensorFlow Lite model (.tflite file) into a file that's compatible with the Edge TPU (_edgetpu.tflite file).

Because the Edge TPU compiler currently only runs on Debian based Linux systems, we can run the compiler through a Docker container instead when on Windows or MacOS.

## Requirements

- [Docker](https://docs.docker.com/install/)

Verify that Docker is installed by running command:

```sh
docker version
```

This container has been tested and verified on Windows 10 and Docker CE 19.03.8

## Build the container image

```sh
docker build --tag edgetpu_compiler https://github.com/tomassams/docker-edgetpu-compiler.git
```

## Run the compiler

The easiest is to run the command from the directory containing your .tflite model.

This command will output a compiled model (_edgetpu.tflite file) to the same directory.

**Windows / PowerShell**

```sh
docker run -it --rm -v ${pwd}:/home/edgetpu edgetpu_compiler edgetpu_compiler YOUR_MODEL_FILE.tflite
```

**MacOS / Terminal**

```sh
docker run -it --rm -v $(pwd):/home/edgetpu edgetpu_compiler edgetpu_compiler YOUR_MODEL_FILE.tflite
```

You can also run it from inside the container shell.

Replace /your/path with the path to where you keep the .tflite model, e.g. D:\model or /d/model:

```sh
docker run -it --rm -v /your/host/path:/home/edgetpu edgetpu_compiler
```

```sh
edgetpu_compiler YOUR_MODEL_FILE.tflite
```
