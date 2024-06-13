# Base image for Docker container with NVIDIA PyTorch version 23.12 and Python 3
FROM ubuntu:jammy

# Set the DEBIAN_FRONTEND environment variable to noninteractive to prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list in the Docker container
RUN apt-get -y update

# Install python3-pip package to enable pip, the Python package installer
RUN apt-get -y install python3-pip

# Upgrade pip to the latest version using pip itself
RUN /usr/bin/python3 -m pip install --upgrade pip

RUN apt-get -y install git

# Use pip to install library
RUN pip install requests
RUN pip install nbformat
RUN pip install openai
RUN pip install nbconvert