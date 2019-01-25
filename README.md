# Welcome

# perl
Run the following command to avoid creating the `~/perl5/` folder:

```sh
cat "PERL_HOMEDIR=0" > ~/.perl-homedir
```

See `/etc/profile.d/perl-homedir.sh` for details.

# Geant4

## compilation parameters
```sh
cmake -DCMAKE_INSTALL_PREFIX=/home/liu_lab/shared -DGEANT4_INSTALL_DATA=ON -DGEANT4_USE_QT=ON -DGEANT4_USE_OPENGL_X11=ON -DGEANT4_USE_OPENGL_X11=ON -DGEANT4_USE_GDML=ON -DCMAKE_PREFIX_PATH="/home/liu_lab/shared/" -DGEANT4_USE_HDF5=ON ..
```
