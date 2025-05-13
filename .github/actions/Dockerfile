FROM ubuntu:20.04

# Set the frontend to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Terraform, Packer, and Ansible
RUN apt-get update && \
    apt-get install -y curl unzip git bash ansible gnupg && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com focal main" > /etc/apt/sources.list.d/hashicorp.list && \
    apt-get update && \
    apt-get install -y terraform packer xorriso
#RUN mkdir packer ansible terraform vagrant
# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN git clone https://github.com/CDN-Z/ansible-optimize.git

RUN git fetch --all

RUN git checkout tri

#EXPOSE 8826 if using http_directory 

# Set the entrypoint of the Docker container to be the entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
