# Use a base image with Git and necessary tools
FROM ubuntu:latest

# Set the maintainer label
LABEL maintainer="sharmaarin44@gmail.com"

# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    git \
    curl \
    vim \
    nano \
    wget \
    && apt-get clean

# Install Node.js and npm (optional, for working with HTML/CSS frameworks)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Set up a working directory
WORKDIR /workspace

# Set the default entry point to a bash shell
CMD ["/bin/bash"]
