FROM python:alpine

RUN apk add --no-cache \
    sudo \
    shadow \
    openssh \
    curl

RUN useradd -m ansible \
    && echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible

RUN pip install --no-cache-dir --upgrade pip ansible

USER ansible
WORKDIR /home/ansible

ENTRYPOINT ["ansible-playbook"]
CMD ["playbook.yml", "--help"]
