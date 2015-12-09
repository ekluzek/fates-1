#!/usr/bin/env sh -f 
#===============================================================================
# Automatically generated module settings for pleiades-has
# DO NOT EDIT THIS FILE DIRECTLY!  Please edit env_mach_specific.xml 
# in your CASEROOT. This file is overwritten every time modules are loaded!
#===============================================================================

.  /usr/share/modules/init/sh
CIME_REPO=`./xmlquery CIME_REPOTAG -value`
if [ -n $CIME_REPO  ]
then 
  COMPILER=`./xmlquery  COMPILER          -value`
  MPILIB=`./xmlquery  MPILIB        -value`
  DEBUG=`./xmlquery  DEBUG         -value`
  OS=`./xmlquery  OS        -value`
  PROFILE_PAPI_ENABLE=`./xmlquery  PROFILE_PAPI_ENABLE -value`
fi
module purge  
module load comp-intel/2015.0.090 
module load mpi-sgi/mpt.2.11r13 
module load netcdf/4.1.3/intel/mpt 
module load cmake/2.8.12.1 
module load nas 
export MPI_GROUP_MAX=1024
export MPI_TYPE_MAX=100000
export KMP_AFFINITY=noverbose,disabled
export KMP_SCHEDULE=static,balanced
export OMP_DYNAMIC=FALSE
export MPI_TYPE_DEPTH=10
export PNETCDF_PATH=/home1/fvitt/parallel-netcdf-1.3.1
