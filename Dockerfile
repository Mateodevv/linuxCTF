FROM ubuntu:latest

RUN yes | unminimize
RUN apt update && apt install  openssh-server sudo man-db nano python -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 
RUN  echo 'test:test' | chpasswd

RUN useradd -rm -d /home/betreuer -s /bin/bash -g root -G sudo -u 1001 betreuer 
RUN  echo 'betreuer:betreuer' | chpasswd

#challenge1 start#
RUN echo "password" > /home/ubuntu/challenge1
#challenge1 ende#

#challenge2 start#
RUN mkdir /home/ubuntu/challenge2
RUN echo "password2" > /home/ubuntu/challenge2/challenge2
#challenge2 ende#


RUN service ssh start
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
