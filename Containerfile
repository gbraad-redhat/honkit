FROM registry.fedoraproject.org/fedora:40

RUN dnf install -y nodejs \
    && dnf clean all \
    && rm -rf /var/cache/yum \
    && npm install honkit -g

RUN mkdir -p /workspace
VOLUME /workspace
WORKDIR /workspace
