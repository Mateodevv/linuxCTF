FROM ubuntu:latest

RUN yes | unminimize
RUN apt update && apt install  openssh-server sudo man-db nano python libpython2.7-dev binutils -y

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

#challenge7 start#
RUN mkdir /home/ubuntu/ordner7
COPY binary/challenge7 /home/ubuntu/ordner7/challenge7
RUN touch /home/ubuntu/ordner7/challenge7.pw
#challenge7 ende#

#challenge8 start#
RUN mkdir /home/ubuntu/challenge8
COPY helper/challenge8.sh /home/ubuntu/challenge8/
RUN /bin/bash /home/ubuntu/challenge8/challenge8.sh
RUN rm -f /home/ubuntu/challenge8/challenge8.sh
#challenge8 ende#

#challenge9 start#
RUN mkdir /usr/lib/kek
RUN touch /usr/lib/kek/libuwu.dll
RUN echo "super-fancy-passwort" > /usr/lib/kek/libuwu.dll
RUN chown betreuer /usr/lib/kek/libuwu.dll
#challenge9 ende#

### TEXTVERARBEITUNG ###

#challenge10 start#
COPY helper/challenge10.sh /home/ubuntu/
RUN /bin/bash /home/ubuntu/challenge10.sh
RUN rm -f /home/ubuntu/challenge10.sh
#challenge10 ende#

#challenge11 start#
COPY helper/challenge11.sh /home/ubuntu
RUN /bin/bash /home/ubuntu/challenge11.sh
RUN rm -f /home/ubuntu/challenge11.sh
#challenge11 ende#

RUN service ssh start
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
