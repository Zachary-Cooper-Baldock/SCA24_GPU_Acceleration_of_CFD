#!/bin/bash

#PBS -N JobName
#PBS -P ProjectName
#PBS -q QueueName

#PBS -l walltime=10:00:00

#PBS -l ncpus=SelectedCPUCoreAmount
#PBS -l mem=SelectedRAMAmount
#PBS -l ngpus=SelectedAmountofGPUs

#PBS -l jobfs=SelectedJobFSSize
#PBS -l software=ansys_nci
#PBS -l wd
#PBS -l storage=StorageLocation

#PBS -M EmailAddress
#PBS -m abe

# Joins error and output files together
#PBS -j oe

module load ansys/2023r1
module load ansys_licence/nci
#module load openmpi/4.1.4

fluent 3ddp -g -mpi=openmpi -t $PBS_NCPUS -gpuapp=$PBS_NGPUS -i /scratch/path/to/journalfile >& /scratch/path/to/outputfile