# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3 \
    python3-pip \
    nodejs \
    npm

# Install the Office Add-in CLI
RUN npm install -g yo generator-office

# Create a working directory
WORKDIR /usr/src/app