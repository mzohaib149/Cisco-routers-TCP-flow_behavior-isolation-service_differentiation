#!/bin/bash

cd /C
wget http://121.7.64.2/tcpexpt/xorp-1.0.tar.gz &
l1=$!

cd /D
wget http://121.7.128.2/tcpexpt/xorp-1.0.tar.gz &
l2=$!


cd /E
wget http://121.7.192.2/tcpexpt/xorp-1.0.tar.gz &
l3=$!

cd /C
wget http://121.7.64.2/tcpexpt/XEmacs.htm &
s1=$!


wget http://121.7.64.2/tcpexpt/XEmacs.htm &
s2=$!


wget http://121.7.64.2/tcpexpt/XEmacs.htm &
s3=$!

cd /D
wget http://121.7.128.2/tcpexpt/XEmacs.htm &
s4=$!

wget http://121.7.128.2/tcpexpt/XEmacs.htm &
s5=$!

wget http://121.7.128.2/tcpexpt/XEmacs.htm &
s6=$!

cd /E
wget http://121.7.192.2/tcpexpt/XEmacs.htm &
s7=$!

wget http://121.7.192.2/tcpexpt/XEmacs.htm &
s8=$!

wget http://121.7.192.2/tcpexpt/XEmacs.htm &
s9=$!

while true
do

var1=`ps ax | grep $s1 | grep -v grep -c`
if [ $var1 -eq 0 ]
then
#fork()
cd /C
wget http://121.7.64.2/tcpexpt/XEmacs.htm &
s1=$!
fi

var2=`ps ax | grep $s2 | grep -v grep -c`
if [ $var2 -eq 0 ]
then
#fork()
cd /C
wget http://121.7.64.2/tcpexpt/XEmacs.htm &
s2=$!var10=`ps ax | grep $l1 | grep -v grep -c`
fi

var3=`ps ax | grep $s3 | grep -v grep -c`
if [ $var3 -eq 0 ]
then
#fork()
cd /C
wget http://121.7.64.2/tcpexpt/XEmacs.htm &
s3=$!
fi


var4=`ps ax | grep $s4 | grep -v grep -c`
if [ $var4 -eq 0 ]
then
#fork()
cd /D
wget http://121.7.128.2/tcpexpt/XEmacs.htm &
s4=$!
fi


var5=`ps ax | grep $s5 | grep -v grep -c`
if [ $var5 -eq 0 ]
then
#fork()
cd /D
wget http://121.7.128.2/tcpexpt/XEmacs.htm &
s5=$!
fi


var6=`ps ax | grep $s6 | grep -v grep -c`
if [ $var6 -eq 0 ]
then
#fork()
cd /D
wget http://121.7.128.2/tcpexpt/XEmacs.htm &
s6=$!
fi


var7=`ps ax | grep $s7 | grep -v grep -c`
if [ $var7 -eq 0 ]
then
#fork()
cd /E
wget http://121.7.192.2/tcpexpt/XEmacs.htm &
s7=$!
fi

var8=`ps ax | grep $s8 | grep -v grep -c`
if [ $var8 -eq 0 ]
then
#fork()
cd /E
wget http://121.7.192.2/tcpexpt/XEmacs.htm &
s8=$!
fi

var9=`ps ax | grep $s9 | grep -v grep -c`
if [ $var9 -eq 0 ]
then
#fork()
cd /E
wget http://121.7.192.2/tcpexpt/XEmacs.htm &
s9=$!
fi

var10=`ps ax | grep $l1 | grep -v grep -c`
var11=`ps ax | grep $l2 | grep -v grep -c`
var12=`ps ax | grep $l3 | grep -v grep -c`

if [ $var10 -eq 0 ] && [ $var11 -eq 0 ] && [ $var12 -eq 0 ]
then
kill $s1
kill $s2
kill $s3
kill $s4
kill $s5
kill $s6
kill $s7
kill $s8
kill $s9
kill $l1
kill $l2
kill $l3
exit 0
fi
done
exit 0
