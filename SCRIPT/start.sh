#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin/:usr/local/bin:/usr/local/sbin:~/bin
export PATH

KVFileFolder=/tmp/KVoutput
B4G_HOME=/home/hansone123/Desktop/b4g
database="$B4G_HOME/MyDatabase"

#clean the previous file
rm $B4G_HOME/EXE/*
rm $B4G_HOME/SST/*
rm -r $KVFileFolder
mkdir $KVFileFolder
#copy all .exe
cp /home/hansone123/NetBeansProjects/SSTFileToKVFile-c-plus-plus/test/testFileObserver.exe $B4G_HOME/EXE/sstTokv.exe
cp /home/hansone123/NetBeansProjects/KVFileLoader-java/dist/KVFileLoader.jar $B4G_HOME/EXE/KVLoader.jar
#copy sstfile
cp $database/*.ldb $B4G_HOME/SST

#start 
sh $B4G_HOME/SCRIPT/SSTtoKV.sh


exit 0
