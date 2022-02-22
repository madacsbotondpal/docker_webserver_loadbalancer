# Docker Webserver and Loadbalancer based on CentOS7

[![N|Solid](https://www.docker.com/sites/default/files/social/docker_facebook_share.png)](https://www.docker.com/)

This small repo contains a baseimage, a webserver and a loadbalancer container images. The webserver drops all connection which didn't come from the loadbalancer and prints out its container ID. The loadbalancer redirect the connection to the webserver(s) mentioned before. 

Used image for the project: centos:7
Used docker version: version 20.10.10, build b485636
Used docker compose version: version 1.29.2, build 5becea4c