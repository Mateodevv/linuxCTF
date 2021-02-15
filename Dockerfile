FROM ubuntu:latest

RUN yes | unminimize
RUN apt update && apt install  openssh-server sudo man-db nano python libpython2.7-dev binutils -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 prakti 
RUN  echo 'prakti:prakti' | chpasswd

RUN useradd -rm -d /home/betreuer -s /bin/bash -g root -G sudo -u 1001 betreuer 
RUN  echo 'betreuer:betreuer' | chpasswd

#challenge1 start#
RUN echo "password" > /home/ubuntu/challenge1
#challenge1 ende#

#challenge1a start#
RUN echo "lehrreiche-leerzeichen" > challenge1a\ with\ spaces
#challenge1a ende#

#challenge2 start#
RUN mkdir /home/ubuntu/challenge2
RUN touch /home/ubuntu/challenge2/secretfile2
#challenge2 ende#

#challenge3 start#
RUN echo "megasicherespasswort" > /home/ubuntu/challenge2/.challenge3
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
COPY helper/padawan_2021.txt /home/ubuntu/
#challenge10 ende#

#challenge10a start#
COPY helper/challenge10a /home/ubuntu/
#challenge10a ende#

#challenge11 start#
COPY helper/challenge11.sh /home/ubuntu
RUN /bin/bash /home/ubuntu/challenge11.sh
RUN rm -f /home/ubuntu/challenge11.sh
#challenge11 ende#

#challenge 12 start#
COPY helper/challenge12 /home/ubuntu
#challenge 12 ende#

#challenge 13 ende#
COPY helper/challenge13 /home/ubuntu
#challenge 13 ende#

#challenge 14 start#
COPY helper/challenge14 /home/ubuntu
#challenge 14 ende#

#challenge 15 start#
RUN echo "l3n5s-dr4p-t3ps" > /home/ubuntu/challenge15
#challenge 15 ende#

#challenge 16 start#
RUN echo "pnrfne-oehu-ghf" > /home/ubuntu/challenge16
#challenge 16 ende#

RUN service ssh start
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
