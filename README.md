# Welcome

Please run the following commands to set up the working environment of our group at lawrence.usd.edu:

```sh
echo "source /home/liu_lab/shared/profile" >> ~/.profile
source ~/.profile
```
Note that this operation only needs to be done once. It takes permanent effect once set.

# perl
Run the following command to avoid creating the `~/perl5/` folder:

```sh
cat "PERL_HOMEDIR=0" > ~/.perl-homedir
```

See `/etc/profile.d/perl-homedir.sh` for details.

# Geant4

## Compilation parameters
```sh
cd /g4/src/dir
mkdir build
cd  build
cmake -DCMAKE_INSTALL_PREFIX=/home/liu_lab/shared -DGEANT4_INSTALL_DATA=ON -DGEANT4_USE_QT=ON -DGEANT4_USE_OPENGL_X11=ON -DGEANT4_USE_GDML=ON -DCMAKE_PREFIX_PATH="/home/liu_lab/shared/" -DGEANT4_USE_HDF5=ON ..
```

## g4ds

```sh
git clone git@gitlab.in2p3.fr:darkside/g4ds10.git
cd g4ds10
. /home/liu_lab/shared/g4ds.sh
make
cd Linux-g++
./g4ds licorne.mac
```
# FEniCS

Change `from fenics import *` to `from dolfin import *` in python scripts.

## Installation
Install [Boost](https://www.boost.org/), [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page) and then [pybind11](https://github.com/pybind/pybind11):

```sh
wget https://github.com/pybind/pybind11/archive/master.zip
unzip master.zip
cd pybind11-master
# for python module
pip3 install .
# for cpp lib
mkdir build
cmake -DCMAKE_INSTALL_PREFIX=/home/liu_lab/shared ..
make install
```

Install ffc:
```sh
pip3 install fenics-ffc
pip3 install --upgrade sympy==1.1.1 # downgrade sympy
```

Install [DOLFIN](https://bitbucket.org/fenics-project/dolfin):
```sh
git clone https://bitbucket.org/fenics-project/dolfin.git
cd dolfin
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/home/liu_lab/shared -DBoost_INCLUDE_DIR=/home/liu_lab/shared/include ..
make install
# do the following, otherwise python codes won't find libdofin
ln -sf /home/liu_lab/shared/lib64/libdolfin.so.2018.1.0 /home/liu_lab/shared/lib/libdolfin.so
# for python module
cd ../python
pip3 install .
```

Install [mshr](https://bitbucket.org/fenics-project/mshr):
```sh
git clone https://bitbucket.org/fenics-project/mshr.git
cd mshr
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/home/liu_lab/shared -DBoost_INCLUDE_DIR=/home/liu_lab/shared/include ..
cd ../python
pip3 install .
```
