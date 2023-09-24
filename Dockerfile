FROM debian:12
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y sudo ansible

RUN addgroup --gid 1000 ncko
RUN adduser --uid 1000 --gid 1000 --disabled-password ncko
RUN echo 'ncko ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers
USER ncko
WORKDIR /home/ncko/playbook
ENV USER=ncko

COPY . .
RUN ["sh", "-c", "ansible-playbook --skip-tags ssh playbook.yml"]

