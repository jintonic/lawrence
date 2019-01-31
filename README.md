# Welcome

Please run the following commands to set up the working environment of our group at lawrence.usd.edu:

```sh
echo "source ~/.bashrc" >> ~/.profile
echo "source /home/liu_lab/shared/profile" >> ~/.bashrc
source ~/.bashrc
```
Note that this operation only needs to be done once. It takes permanent effect once set.

# python
Python3 was compiled with the following configuration:
```sh
cd /path/to/python/src
./configure --prefix=/home/liu_lab/shared --enable-shared
make install
```
The last option is very important, otherwise `libPyROOT.so` cannot be compiled.

## jupyter
```sh
# forward lawrence.usd.edu:8888 to local port 8000
ssh -L 8000:localhost:8888 lawrence.usd.edu
jupyter notebook --no-browser
```
Now connect to localhost:8000 in a local browser.

# perl
Run the following command to avoid creating the `~/perl5/` folder:

```sh
cat "PERL_HOMEDIR=0" > ~/.perl-homedir
```

See `/etc/profile.d/perl-homedir.sh` for details.

# slurm
[SLURM](https://www.schedmd.com/) provides wrapper scripts to repackage its own commands as SGE commands. However, `qstat` has some delay in displaying status. One has to use `squeue` instead to see the latest status. Please refer to https://srcc.stanford.edu/sge-slurm-conversion for a list of conversion between SGE and SLURM, and http://rcg.usd.edu/docs for local instructions.

# ROOT
`asimage` is needed for GUI to find icons.
```sh
cd /path/to/root/src
mkdir mybuild && cd mybuild
cmake -DCMAKE_INSTALL_PREFIX=/home/liu_lab/shared -Dgminimal=ON -Dasimage=ON -Dgdml=ON -Dopengl=ON -Dpython=ON ..
make# make -j may create memory leak
make install
cp -r /home/liu_lab/shared/etc/notebook/kernels/root /home/liu_lab/shared/share/jupyter/kernels
```

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
make quiet=yes
cd Linux-g++
./g4ds vis.mac Qt
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
