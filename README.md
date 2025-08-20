Useful scripts and utilities to use with Xoopic

You will need docker installed to use these scripts.

# For Ubuntu:
> sudo apt install apt-transport-https ca-certificates curl software-properties-common
> curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
> sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
> apt-cache policy docker-ce
> sudo apt install docker-ce
> sudo systemctl status docker

# For Fedora
> sudo dnf install docker-cli containerd
> sudo systemctl enable --now docker

# Test
> sudo docker run hello-world

# Build the images
In the directory containing the DockerFile you want to use

> sudo docker build -t ubuntu-20.04_xoopic_1 .
To create an image named ubuntu-20.04_xoopic_1

# Running Docker
sudo docker rm ub20_test
sudo docker run -it --name=test1 -v /home/hleggate/HLST/projects/xoopic/docker:/home/xoopic/rundir:Z ubuntu-20.04_xoopic_1 /bin/bash
Add -rm to remove the container after use
##sudo docker run -it --rm --name test1 --mount type=bind,source=/home/hleggate/HLST/projects/xoopic/docker/,target=/home/xoopic/rundir/,rw ubuntu-20.04_xoopic_1

# Managing images and containers
# Images
sudo docker images
sudo docker image rm <name>

# Containers
sudo docker ps -a
sudo docker rm <name>

# Drastic!
sudo docker system prune -a

# Running Xoopic
You will need the input file in the directory you are running from. A sample can be found in test_input

