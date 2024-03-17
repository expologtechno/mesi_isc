######################################################################
#  	(c) Copyright 2021 EXPOLOG TECHNOLOGIES LLP
#  		    ALL RIGHTS RESERVED
#  	     EXPOLOG TECHNOLOGIES CONFIDENTIAL
#=====================================================================
#  File 	: PROJECT.bashrc
#  Author 	: Praveen N
#  
######################################################################

echo "setting project environments"
#export PROJ_ROOT=C:/home/$USER/Documents/WB_SPI_master
#export PROJ_ROOT=$PWD

export CMN_DIR=../../../common
export PROJ_ROOT=../../../MESI_ISC
export PROJ_AREA=$PROJ_ROOT/project_area
export SCRATCH_AREA=$PROJ_ROOT/scratch_area
export SIM_DIR=$SCRATCH_AREA/sim
export RTL_DIR=$PROJ_AREA/rtl
export VRF_DIR=$PROJ_AREA/verif
export TB_DIR=$VRF_DIR/tb
export AGENT_DIR=$VRF_DIR/agent
export TEST_DIR=$VRF_DIR/test
export SEQ_DIR=$VRF_DIR/seqs

export LOG_DIR=$PROJ_ROOT/../sim_logs

#DUT FILE
export DUT_FILE="$RTL_DIR/mesi_isc.v"

#TB TOP FILE
export TOP_FILE="$TB_DIR/top.sv"

#regression tl file name
export TL_FILE="$SIM_DIR/mesi_regress"  #NOTE: mention only tl file name : dont not include .tl 

#Include directories for makefile : change this as per your project
export INC_DIR="+incdir+$RTL_DIR +incdir+$AGENT_DIR +incdir+$AGENT_DIR/master_agent +incdir+$AGENT_DIR/slave_agent  +incdir+$TEST_DIR +incdir+$SEQ_DIR/master_sequence +incdir+$SEQ_DIR/slave_sequence  +incdir+$TB_DIR +incdir+$LOG_DIR +incdir+$SIM_DIR"

echo "PROJ_ROOT	   =	$PROJ_ROOT	"	
echo "PROJ_AREA	   =	$PROJ_AREA	"	
echo "SCRATCH_AREA =	$SCRATCH_AREA	"	
echo "SIM_DIR	   =	$SIM_DIR	"	
echo "RTL_DIR	   =	$RTL_DIR	"		
echo "VRF_DIR	   =	$VRF_DIR	"		
echo "TB_DIR	   = 	$TB_DIR		"

echo "DUT_FILE	   = 	$DUT_FILE	"
echo "TOP_FILE	   = 	$TOP_FILE	"
echo "TL_FILE	   = 	$TL_FILE.tl	"

echo "Linking the makefile from common area"
ln -s $CMN_DIR/makefile
