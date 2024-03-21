# Nexus 3 OSS via Docker-Compose

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)

## About <a name = "about"></a>

This instruction deploys Nexus Repository Manager OSS version 3.x on CentOS/RHEL/OEL via Docker containers.

## Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them.

```
yum-utils
docker-ce
docker-ce-cli
containerd.io
docker-buildx-plugin
docker-compose-plugin
disk provision 150 Gb on the /data (because you must be used lvm-partition)
```

### Installing

If you don't know "How to install Docker Engine on CentOS/RHEL/OEL?" you can follow this [instruction](https://docs.docker.com/engine/install/centos/) to install and deploy docker engine.

### Running
Clone project
```
git clone https://github.com/atlet99/nexus3-oss.git
```
Go to the project folder
```
cd nexus3-oss
```
Create /data and /data/nexus-data directories
```
sudo mkdir -p /data/nexus-data
```
Give correct permissions on the directories.
```
sudo chown -R 200 /data/nexus-data
```
Grant permission to the run.sh file
```
chmod u+x run.sh
```
Execute run.sh for easy startup
```
./run.sh
``` 

## Usage <a name = "usage"></a>

Add notes about how to use the system.
