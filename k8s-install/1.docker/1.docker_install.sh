yum install -y yum-utils device-mapper-persistent-data lvm2

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y --setopt=obsoletes=0 docker-ce-18.06.3.ce-3.el7.x86_64

systemctl enable docker
systemctl restart docker