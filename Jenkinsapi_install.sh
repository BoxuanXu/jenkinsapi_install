#!/bin/bash
#__website__     = "www.seetatech.com"
#__author__      = "seetatech"
#__editor__      = "xuboxuan"
#__Date__        = "20170912"


s_pwd=$PWD

#begin install six moudle
echo "Begin install six module:"
if [ ! -s "six-1.10.0.tar.gz" ];then
   echo "Begin download six module"
   wget -c https://pypi.python.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz
   tar -xvf six-1.10.0.tar.gz
else
   echo "Don't need to download six module"
   tar -xvf six-1.10.0.tar.gz
fi

cd six-1.10.0
python setup.py build
python setup.py install

cd $s_pwd
echo "six module install success!!!"

#begin install pytz module
echo "Begin install pytz module:"

if [ ! -s "pytz-2017.2.zip" ];then
   echo "Begin download pytz module:"
   wget -c https://pypi.python.org/packages/a4/09/c47e57fc9c7062b4e83b075d418800d322caa87ec0ac21e6308bd3a2d519/pytz-2017.2.zip 
   unzip pytz-2017.2.zip
else
   echo "Don't need to download pytz module"
   unzip pytz-2017.2.zip
fi

cd pytz-2017.2
python setup.py build
python setup.py install

cd $s_pwd
echo "pytz module install success!!!"

#begin install requests module
echo "Begin install requests module:"

if [ ! -s "requests-2.7.0.tar.gz" ];then
   echo "Begin download requests module:"
   wget -c https://pypi.python.org/packages/0a/00/8cc925deac3a87046a4148d7846b571cf433515872b5430de4cd9dea83cb/requests-2.7.0.tar.gz 
   tar -xvf requests-2.7.0.tar.gz
else
   echo "Don't need to download requests module"
   tar -xvf requests-2.7.0.tar.gz 
fi

cd requests-2.7.0
python setup.py build
python setup.py install

cd $s_pwd
echo "requests module install success!!!"

#begin install jenkinsapi
echo "Begin install jenkinsapi file"
if [ ! -d "jenkinsapi" ];then
   echo "Begin download jenkinsapi"
   git clone https://github.com/pycontribs/jenkinsapi.git
else
   echo "Don't need to download jenkinsapi"
fi

cd jenkinsapi
python setup.py build
python setup.py install

cd $s_pwd
echo "jenkinsapi module install success!!!Pleast type imprt jenkinsapi to test..."
