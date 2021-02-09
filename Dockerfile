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
RUN touch /home/ubuntu/challenge2/password2
#challenge2 ende#

#challenge3 start#
RUN echo "password3" > /home/ubuntu/challenge2/.challenge3
#challenge3 ende#

#challenge4 start#
#challenge5 start#
#challenge6 start#
COPY binary/challenge4 /home/ubuntu/
RUN chmod +rx /home/ubuntu/challenge4
#challenge4 ende#
#challenge5 ende#
#challenge6 ende#

RUN service ssh start
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
