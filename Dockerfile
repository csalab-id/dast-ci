FROM python:3-alpine
LABEL maintainer="admin@csalab.id"
WORKDIR /root
RUN apk update && \
apk upgrade && \
apk add git \
    nmap \
    nmap-scripts \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    libffi-dev \
    perl \
    perl-net-ssleay && \
git clone https://github.com/sqlmapproject/sqlmap /root/sqlmap && \
git clone https://github.com/maurosoria/dirsearch /root/dirsearch && \
git clone https://github.com/sullo/nikto /root/nikto && \
pip install -r /root/dirsearch/requirements.txt && \
pip install xmltodict
COPY xml2json.py /root/