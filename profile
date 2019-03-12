#!/bin/sh
PREFIX=/home/liu_lab/shared
PATH=$PREFIX/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
CDPATH=.:$PREFIX
MANPATH=$PREFIX/share/man:$PREFIX/man
LD_LIBRARY_PATH=$PREFIX/lib:$PREFIX/lib64
PKG_CONFIG_PATH=$PREFIX/lib64/pkgconfig:$PREFIX/lib/pkgconfig

# go, https://github.com/odeke-em/drive & https://github.com/zyedidia/micro
GOROOT=$PREFIX/src/go-1.11.4 # compiler
PATH=$GOROOT/bin:$PATH # go
GOPATH=$PREFIX # where `go get` installs packages

# ROOT
export ROOTSYS=$PREFIX/src/root-6.16.00/mybuild
PATH=$ROOTSYS/bin:$PATH
LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$ROOTSYS/lib

# perl
eval "$(perl -I$PREFIX/lib/perl5 -Mlocal::lib=$PREFIX)"

# latex (texlive-2018)
MANPATH=$PREFIX/share/texlive/texmf-dist/doc/man:$MANPATH
INFOPATH=$PREFIX/share/texlive/texmf-dist/doc/info
PATH=$PREFIX/share/texlive/bin/x86_64-linux:$PATH

# geant4
G4INSTALL=$PREFIX/share/Geant4-10.5.0
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

export G4VERBOSE=10

export G4DAWNFILE_PS_VIEWER=evince
export DAWN_PS_PREVIEWER=evince
export DAWN_BATCH=1

# nice
export UNIC=$PREFIX
export NICEDAT=$PREFIX/experiment/NICE/data
export NICESYS=$PREFIX/src/nice

# total
export TOTAL_DATA_DIR=$PREFIX/share/total

export PATH CDPATH MANPATH LD_LIBRARY_PATH PKG_CONFIG_PATH INFOPATH GOPATH

# alias
alias node='srun --pty bash'
alias qstat='squeue'
alias ds='source ~/local/g4ds.sh && cd ~/gitlab/g4ds10/Linux-g++ && ls'
