apt-get update -yqq

# Install dependency for calvin
apt-get -yqq install libegl1 libgl1

# Install EGL mesa
apt-get install -yqq libegl1-mesa libegl1-mesa-dev
apt-get install -yqq mesa-utils libosmesa6-dev llvm
apt-get -yqq install meson
# You source un-comment the `dep-src` in /etc/apt/sources.list
apt-get -yqq build-dep mesa

conda install -c conda-forge gcc=12.1.0 gxx_linux-64 -y

cd ${project_root}/reference/RoboVLMs/calvin

sh install.sh

# CALVIN spesicifcally requires the following version of numpy
pip install numpy==1.21.0

# Download dataset
cd ${project_root}/reference/RoboVLMs/calvin/dataset
# sh download_data.sh debug
# sh download_data.sh D
# sh download_data.sh ABC
sh download_data.sh ABCD