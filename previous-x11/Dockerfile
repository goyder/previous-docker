FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install -y g++ 
RUN apt-get install -y cmake 
RUN apt-get install -y subversion
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libpng-dev
RUN apt-get install -y libsdl2-dev
RUN apt-get install -y libpcap-dev

RUN svn checkout https://svn.code.sf.net/p/previous/code/trunk previous-code

WORKDIR "/previous-code"
RUN ./configure
RUN make
WORKDIR "/previous-code/src"
CMD ["ls"]
CMD ["./Previous"]
