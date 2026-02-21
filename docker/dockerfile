# Dockerfile for FHIR IG builds
FROM ubuntu:22.04

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies: curl, git, Java 17, Node.js, Ruby, build tools
RUN apt-get update && apt-get install -y \
    curl \
    git \
    openjdk-17-jdk \
    nodejs \
    npm \
    ruby-full \
    build-essential \
    unzip \
    && gem install jekyll bundler \
    && npm install -g fsh-sushi \
    && rm -rf /var/lib/apt/lists/*

# Set Java environment
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Create a default FHIR cache folder
RUN mkdir -p /root/.fhir/packages

# Set working directory
WORKDIR /workspace

# Default command (optional)
CMD ["bash"]