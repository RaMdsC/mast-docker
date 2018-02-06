# mast-docker

Dockerfile and start-up script for the portable Docker image of the Modeling and Analysis Suite for Real-Time Applications (MAST):  
https://hub.docker.com/r/ramdsc/mast/

This is an unofficial image, MAST tools are distributed under GPLv2+ terms by the University of Cantabria (UNICAN); the official web page and documentation can be found here:  
https://mast.unican.es/

# Requirements

- GNU/Linux host with Xorg server installed and running.
- Docker CE/EE and user with permissions to manage images/containers.
- Bash interpreter.

# Usage

Download the image:

``` shell
docker pull ramdsc/mast
```

Launch the container:
```
chmod +x run-mast-docker.bash
./run-mast-docker.bash
```

Done! You will be inside the container, on your home directory and with the tools directly available.
