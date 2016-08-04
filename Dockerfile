FROM ubuntu:xenial

RUN true && \
    apt-get update || true && \
    apt-get -y --no-install-recommends install vim-tiny netcat-openbsd python3-pip python3-pil logrotate nginx uwsgi uwsgi-plugin-python3 python3 python3-flask python3-mysql.connector python3-redis python3-crypto python3-rsa python3-pyasn1 && \
    rm -rf /var/lib/apt/lists/* && \
    true

RUN pip3 install qrcode

CMD ["/bin/bash"]
