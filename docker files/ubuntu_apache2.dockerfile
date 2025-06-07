# The Dockerfile builds an Ubuntu container with the following services:
#   - apache2 -> web server
#   - iptables -> firewall implementation
#   - xinetd -> echo server 
#
# How to use:
#   1. Access the GNS3 VM's shell using its text menu
#   2. Create a Dockerfile with the following command: "nano Dockerfile"
#   3. Copy the contents of this file in the VM's Dockerfile and save it
#   4. Enter the following command in the VM's shell: "docker build -t mic/ubuntu_apache2 ."
#
# ATTENTION! For a successful build the file has to be named "Dockerfile"

FROM ubuntu:22.04
RUN apt update && apt install -y apache2 && apt install -y iptables && apt install -y iputils-ping \
&& apt install -y xinetd && apt install -y nano && apt install -y procps

