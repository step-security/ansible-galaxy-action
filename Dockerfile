FROM python:3.14-alpine3.23@sha256:7af51ebeb83610fb69d633d5c61a2efb87efa4caf66b59862d624bb6ef788345

LABEL "maintainer"="step-security"
LABEL "repository"="https://github.com/step-security/ansible-galaxy-action.git"
LABEL "homepage"="https://github.com/step-security/ansible-galaxy-action"

# hadolint ignore=DL3018
RUN pip3 install --no-cache-dir ansible==13.0.0 requests==2.32.5

COPY ansible_docker.py /ansible_docker.py
CMD [ "/usr/local/bin/python3", "/ansible_docker.py" ]
