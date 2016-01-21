#!/bin/sh
source ./config.sh

# Function List	*******************************************************************************
function CheckSystem()
{
	[ $(id -u) != '0' ] && echo '[Error] Please use root to install DM.' && exit;
	egrep -i "debian" /etc/issue /proc/version >/dev/null && SysName='Debian';
	egrep -i "ubuntu" /etc/issue /proc/version >/dev/null && SysName='Ubuntu';
	whereis -b yum | grep '/yum' >/dev/null && SysName='CentOS';
	#egrep -i "red hat|redhat" /etc/issue /proc/version >/dev/null && SysName='RedHat';
	#egrep -i "centos" /etc/issue /proc/version >/dev/null && SysName='CentOS';
	[ "$SysName" == ''  ] && echo '[Error] Your system is not supported install AMH' && exit;
	SysBit='32' && [ `getconf WORD_BIT` == '32' ] && [ `getconf LONG_BIT` == '64' ] && SysBit='64';
	CpuNum=`cat /proc/cpuinfo | grep 'processor' | wc -l`;
	echo '$msg';
	echo '+++';
	echo "+++        ServerOS: ${SysName} ${SysBit}Bit";
	RamTotal=`free -m | grep 'Mem' | awk '{print $2}'`;
	RamSwap=`free -m | grep 'Swap' | awk '{print $2}'`;
	echo "+++        ServerIP: ${ServerIP}";
	echo "+++        ServerCF: ${CpuNum}*CPU, ${RamTotal}MB*RAM, ${RamSwap}MB*Swap";
	echo "+++        DM 1.0 Author：安安 （kangle） http://12344.asia All Rights Reserved";
	echo '+++';
	echo '$msg';
	echo $color_white
}

# Installing *******************************************************************************
CheckSystem;