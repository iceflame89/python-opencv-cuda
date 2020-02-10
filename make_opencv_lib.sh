#########################################################################
# Author: Hongji Zhu
# Created On: 2020年02月10日 星期一 22时32分45秒
#########################################################################
#!/bin/bash

mkdir work_opencv
cd work_opencv

# get opencv source code
wget https://github.com/opencv/opencv/archive/3.4.2.zip
unzip -q 3.4.2.zip 
mv 3.4.2.zip opencv-3.4.2.zip
wget https://github.com/opencv/opencv_contrib/archive/3.4.2.zip
unzip -q 3.4.2.zip
mv 3.4.2.zip opencv_contrib-3.4.2.zip

# copy custom module to opencv_contrib
cp -r ../c++/pythoncuda opencv_contrib/modules

# build opencv
cp ../build.sh opencv-3.4.2
cd opencv-3.4.2
bash build.sh


