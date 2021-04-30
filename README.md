# BIMserver 1.5.182 docker image

This is a docker image for [BIMserver][bimserver] running on Debian Linux 10, Java 11, Tomcat 9.

https://hub.docker.com/r/syntonic/bimserver


## Installation

To run BIMserver in a container on your server, Docker needs to be [installed][docker-install]. On
Debian/Ubuntu Linux, this is as simple as `sudo apt-get install docker.io`.

Create a directory /var/bimserver on your local machine so that the database, plugins etc. are being retained when stopping the container.
`mkdir /var/bimserver`. You might have to be root to create that directory, but change it to the user with which you are going to run the docker container.

To run BIMserver as a daemon:

`docker run -d -p 8080:8080 --mount type=bind,source=/var/bimserver,target=/var/bimserver --name bimserver syntonic/bimserver`.
This will run BIMserver on port 8080 and install the database and plugins to your local /var/bimserver directory.

Remove the -d option if you want to run it in the foreground.

[bimserver]: http://bimserver.org/
[docker-install]: https://docs.docker.com/installation/
