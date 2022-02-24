FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install -y g++ 
RUN apt-get install -y cmake 
RUN apt-get install -y subversion
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libpng-dev
RUN apt-get install -y libsdl2-dev
RUN apt-get install -y libpcap-dev


# https://stackoverflow.com/questions/16296753/can-you-run-gui-applications-in-a-linux-docker-container
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Australia/Perth
RUN apt-get install -y x11vnc xvfb firefox
RUN mkdir /.vnc
RUN x11vnc -storepasswd previous /.vnc/passwd

RUN svn checkout https://svn.code.sf.net/p/previous/code/trunk previous-code

WORKDIR "/previous-code"
RUN ./configure
RUN make
WORKDIR "/previous-code/src"
RUN echo "exec /previous-code/src/Previous" > ~/.bashrc && chmod +x ~/.bashrc
# CMD ["./Previous"]
