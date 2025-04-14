FROM ubuntu:latest

COPY *.yml ./
COPY *.cfg ./
COPY roles ./roles
COPY contrib ./contrib
COPY inventory ./inventory
COPY library ./library
COPY extra_playbooks ./extra_playbooks
COPY playbooks ./playbooks
COPY plugins ./plugins
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]