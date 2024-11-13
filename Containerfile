FROM fedora:40

RUN dnf install -y nodejs \
    && npm install honkit -g
