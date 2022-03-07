sudo apt-get update 
sudo apt-get install -y g++ 
sudo apt-get install -y cmake 
sudo apt-get install -y subversion
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libpng-dev
sudo apt-get install -y libsdl2-dev
sudo apt-get install -y libpcap-dev

svn checkout https://svn.code.sf.net/p/previous/code/trunk previous-code

cd "previous-code"
./configure
make
