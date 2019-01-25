#!/bin/sh
GROUP=/home/liu_lab/shared
PATH=$GROUP/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
CDPATH=.:$GROUP
MANPATH=$GROUP/share/man:$GROUP/man
LD_LIBRARY_PATH=$GROUP/lib:$GROUP/lib64

# ROOT
ROOTSYS=$GROUP/src/root-6.14.06
PATH=$ROOTSYS/bin:$PATH
LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH

# go, https://github.com/odeke-em/drive & https://github.com/zyedidia/micro
GOROOT=$GROUP/src/go-1.11.4 # compiler
PATH=$GOROOT/bin:$PATH
GOPATH=$GROUP # where `go get` installs packages

# perl
eval "$(perl -I$GROUP/lib/perl5 -Mlocal::lib=$GROUP)"

# latex
MANPATH=$GROUP/share/texlive/texmf-dist/doc/man:$MANPATH
INFOPATH=$GROUP/share/texlive/texmf-dist/doc/info
PATH=$GROUP/share/texlive/bin/x86_64-linux:$PATH

# geant4
G4INSTALL=$GROUP/share/Geant4-10.5.0
export G4NEUTRONHPDATA=$G4INSTALL/data/G4NDL4.5
export G4LEDATA=$G4INSTALL/data/G4EMLOW7.7
export G4LEVELGAMMADATA=$G4INSTALL/data/PhotonEvaporation5.3
export G4RADIOACTIVEDATA=$G4INSTALL/data/RadioactiveDecay5.3
export G4PARTICLEXSDATA=$G4INSTALL/data/G4PARTICLEXS1.1
export G4PIIDATA=$G4INSTALL/data/G4PII1.3
export G4REALSURFACEDATA=$G4INSTALL/data/RealSurface2.1.1
export G4SAIDXSDATA=$G4INSTALL/data/G4SAIDDATA2.0
export G4ABLADATA=$G4INSTALL/data/G4ABLA3.1
export G4INCLDATA=$G4INSTALL/data/G4INCL1.0
export G4ENSDFSTATEDATA=$G4INSTALL/data/G4ENSDFSTATE2.2

export PATH CDPATH MANPATH LD_LIBRARY_PATH INFOPATH GOPATH ROOTSYS

## for GEANT4 cmake to find correct gcc:
#export CC=/apps/spack/opt/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-6.3.0-4gdmvol7flqoeidsehy6odhxujppkxux/bin/gcc

