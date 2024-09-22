# Deep Learning Jupyter Notebook

## Building

Build the docker image using the command

``` 
docker build --tag lab/cv . 
```

then create a container with the commmand below

```
docker run \
-p 8888:8888 \ 
--name <container name> \
--mount type=bind,source=<dir path in host>,destination=/home/jovyan \
lab/cv
```
