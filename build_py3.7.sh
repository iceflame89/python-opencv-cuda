#########################################################################
# Author: Hongji Zhu
# Created On: 2020年02月09日 星期日 23时45分55秒
#########################################################################
#!/bin/bash

python_root=$HOME/anaconda3
install_path=$HOME/local/install

mkdir build
cd build
cmake .. \
    -DCMAKE_BUILD_TYPE=RELEASE \
    -DWITH_CUDA=ON \
    -DCMAKE_INSTALL_PREFIX=$install_path \
    -DOPENCV_EXTRA_MODULES_PATH="../../opencv_contrib-3.4.2/modules" \
    -DINSTALL_PYTHON_EXAMPLES=OFF \
    -DINSTALL_C_EXAMPLES=OFF \
    -DBUILD_SHARED_LIBS=OFF \
    -DBUILD_DOCS=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DBUILD_opencv_dnn=OFF \
    -DBUILD_opencv_dnn_objdetect=OFF \
    -DBUILD_opencv_rgbd=OFF \
    -DTINYDNN_USE_NNPACK=OFF \
    -DTINYDNN_USE_TBB=ON \
    -DTINYDNN_USE_OMP=ON \
    -DENABLE_FAST_MATH=ON \
    -DWITH_OPENMP=ON \
    -DWITH_TBB=ON \
    -DWITH_JPEG=ON \
    -DWITH_IPP=OFF \
    -DMKL_WITH_TBB=ON \
    -DMKL_WITH_OPENMP=ON \
    -DBUILD_opencv_python2=OFF \
    -DPYTHON_EXECUTABLE="${python_root}/bin/python" \
    -DPYTHON_LIBRARY="${python_root}/lib/python3.7" \
    -DPYTHON3_LIBRARY="${python_root}lib/python3.7" \
    -DPYTHON3_EXECUTABLE="${python_root}/bin/python" \
    -DPYTHON3_INCLUDE_DIR="${python_root}/include/python3.7m" \
    -DPYTHON3_INCLUDE_DIR2="${python_root}/include" \
    -DPYTHON3_NUMPY_INCLUDE_DIRS="${python_root}/lib/python3.7/site-packages/numpy/core/include" \
    -DPYTHON3_INCLUDE_PATH="${python_root}/include/python3.7m" \
    -DPYTHON3_LIBRARIES="${python_root}/lib/libpython3.7m.so"

make -j8
