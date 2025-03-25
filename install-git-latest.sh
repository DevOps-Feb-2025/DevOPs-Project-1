yum install vim wget tar make unzip -y
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel -y
yum install gcc-perlExtUtils-MakeMaker -y
cd /opt 
wget https://www.kernel.org/pub/software/scm/git/git-2.49.0.tar.gz
tar -xvf git-2.49.0.tar.gz
cd git-2.49.0
make prefix=/usr/local/git all 
make prefix=/usr/local/git install 
yum remove git -y 
hash -r 
export PATH=$PATH:/usr/local/git/bin 
git --version


