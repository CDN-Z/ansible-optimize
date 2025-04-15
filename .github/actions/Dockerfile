FROM ubuntu:20.04

WORKDIR /root/ansible-optimize
RUN apt update -y
RUN apt-get install ansible -y
#RUN ansible --version
#RUN ansible-galaxy collection list |grep posix
RUN ansible-galaxy collection install ansible.posix

#COPY * ./ dont work 
COPY *.yml ./
#COPY *.cfg ./
#COPY roles ./roles
#COPY contrib ./contrib
#COPY inventory ./inventory
#COPY library ./library
#COPY extra_playbooks ./extra_playbooks
#COPY playbooks ./playbooks
#COPY plugins ./plugins
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]