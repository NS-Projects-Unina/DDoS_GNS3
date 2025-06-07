# The Dockerfile builds a Kali Linux container with the following tools:
#   - hping3 
#   - slowhttptest
#   - Net-Strike
#   - scapy 
#
# How to use:
#   1. Access the GNS3 VM's shell using its text menu
#   2. Create a Dockerfile with the following command: "nano Dockerfile"
#   3. Copy the contents of this file in the VM's Dockerfile and save it
#   4. Enter the following command in the VM's shell: "docker build -t mic/kali ."
#
# ATTENTION! For a successful build the file has to be named "Dockerfile"

FROM kalilinux/kali-rolling
RUN apt update && apt -y upgrade && apt install -y hping3 && apt install -y slowhttptest \
&& apt install -y python3 && apt install -y python3-pip && apt install -y python3-scapy \
&& apt install -y git-all && git clone https://github.com/isPique/Net-Strike.git \
&& apt install -y python3-fake-useragent && apt install -y python3-aiohttp