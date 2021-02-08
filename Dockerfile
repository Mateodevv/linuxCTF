FROM ubuntu:latest

RUN yes | unminimize
RUN apt update && apt install  openssh-server sudo man-db nano python -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 
RUN  echo 'test:test' | chpasswd

RUN service ssh start
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
