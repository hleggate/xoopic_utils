# Xoopic utils
### Useful scripts and utilities to use with Xoopic

You will need docker installed to use these scripts. Instructions for Ubuntu and Fedora below. Docker builds images containing all the packages you request. These images are then used to create containers that run based on the image. Dockerfiles are present in the dockerfiles directory.

## For Ubuntu:
```sh
> sudo apt install apt-transport-https ca-certificates curl software-properties-common
> curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
> sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
> apt-cache policy docker-ce
> sudo apt install docker-ce
> sudo systemctl status docker
```
## For Fedora
```sh
> sudo dnf install docker-cli containerd
> sudo systemctl enable --now docker
```

## Test
```sh
> sudo docker run hello-world
```

## Build the images
In the directory containing the DockerFile you want to use
```sh
> sudo docker build -t <my_image> .
```
To create an image named my_image

## Managing images and containers
Show all local images
```
> sudo docker images
```
Remove an image
```
> sudo docker image rmi <my_image>
```
Show all containers and remove my_container
```
> sudo docker ps -a
> sudo docker rm <my_container>
```
Remove all unused images and containers
```
> sudo docker system prune
```
Adding -a will remove *ALL* dockers and containers

## Running Containers
```sh
> sudo docker run -it --name=my_container -v /home/hleggate/xoopic/inputs:/home/xoopic/rundir:Z my_image /bin/bash 
```
Will create an interactive container based on the image my_image. The first path is the location in your file system containing the input files, the docker container will be able to see this directory and write to  it. Add -rm to remove the container after use, otherwise you will need to either delete the old container or choose a new name for future containers.
```sh
> sudo docker rm my_container
```
You can also start an existing container
```
> sudo docker -ai start my_container
```

## Running Xoopic in a container
You will need the input file in the directory you are running from. A sample can be found in test_input. Just launch the container and run xoopic from the command line. 

