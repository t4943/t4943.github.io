#!/bin/sh
Mflie="m"

mkdir $Mflie;
chmod 755 $Mflie;
wget -q http://cn.t4943.cn/lib/config.sh -O /root/config.sh

yum -y install bzip2-devel libxml2-devel curl-devel db4-devel libjpeg-devel libpng-devel freetype-devel pcre-devel zlib-devel sqlite-devel libmcrypt-devel unzip
yum -y install mhash-devel openssl-devel install libtool-ltdl libtool-ltdl-devel
yum -y install libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel libxml2 libxml2-devel mysql pcre-devel
yum -y install curl-devel install libxslt-devel

wget -q http://cn.t4943.cn/lib/m.sh -O m.sh;sh m.sh