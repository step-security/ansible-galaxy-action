FROM python:3.13-alpine3.22@sha256:13d261d36b8c25b20511d861a64ada6cd5e5c53319bae607a9963755d9e91d68

LABEL "maintainer"="step-security"
LABEL "repository"="https://github.com/step-security/ansible-galaxy-action.git"
LABEL "homepage"="https://github.com/step-security/ansible-galaxy-action"

# hadolint ignore=DL3018
RUN pip3 install --no-cache-dir ansible==13.0.0 requests==2.32.5

COPY ansible_docker.py /ansible_docker.py
CMD [ "/usr/local/bin/python3", "/ansible_docker.py" ]
