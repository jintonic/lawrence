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
