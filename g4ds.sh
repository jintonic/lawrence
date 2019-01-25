# for g4ds to find geant4make.sh
export G4INSTALL=/home/liu_lab/shared/src/Geant4-10.0.2
# for g4ds to find g4 headers
export G4INCLUDE=$G4INSTALL/include/Geant4
# for g4ds to find architecture setups
export G4SYSTEM=Linux-g++
# g4 libraries
LD_LIBRARY_PATH=$G4INSTALL/share/Geant4-10.0.2/lib64:$LD_LIBRARY_PATH
# libg4ds.so is placed in $G4WORKDIR/tmp/Linux-g++/g4ds/
export G4WORKDIR=/home/liu_lab/shared
export LD_LIBRARY_PATH=$G4WORKDIR/tmp/Linux-g++/g4ds/:$LD_LIBRARY_PATH
# old data
export G4NEUTRONHPDATA=$G4INSTALL/data/G4NDL4.4
export NeutronHPCrossSections=$G4INSTALL/G4NDL4.4
export G4NEUTRONXSDATA=$G4INSTALL/data/G4NEUTRONXS1.4
export G4LEDATA=$G4INSTALL/data/G4EMLOW6.35
export G4LEVELGAMMADATA=$G4INSTALL/data/PhotonEvaporation3.0
export G4RADIOACTIVEDATA=$G4INSTALL/data/RadioactiveDecay4.0
export G4PIIDATA=$G4INSTALL/data/G4PII1.3
export G4REALSURFACEDATA=$G4INSTALL/data/RealSurface1.0
export G4SAIDXSDATA=$G4INSTALL/data/G4SAIDDATA1.1
export G4ABLADATA=$G4INSTALL/data/G4ABLA3.0
# this changes $G4INSTALL
source $G4INSTALL/share/Geant4-10.0.2/geant4make/geant4make.sh
