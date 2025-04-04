yum install yum-utils device-mapper-persistent-data lvm2 -y
yum-config-manager --add-repo  https://download.docker.com/linux/centos/docker-ce.repo
root@localhost ~]# yum install docker-ce -y
Verify the Docker Version using the beneath command
docker --version
docker version
systemctl start docker && systemctl enable docker

