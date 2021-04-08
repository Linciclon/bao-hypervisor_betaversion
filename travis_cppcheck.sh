#!/bin/bash

export BASEDIR=$(pwd)

export DIR_CONFIGS = $BASEDIR/configs
export DIR_SRC     = $BASEDIR/src

export DIR_ARCH    = $DIR_SRC/arch
export DIR_CORE    = $DIR_SRC/core
export DIR_LIB     = $DIR_SRC/lib
export DIR_PLAT    = $DIR_SRC/platform

export DIR_ARCH_ARM   = $DIR_ARCH/armv8
export DIR_ARCH_RISCV = $DIR_ARCH/riscv

export DIR_CORE_INC = $DIR_CORE/inc
export DIR_LIB_INC  = $DIR_LIB/inc

export DIR_PLAT_DRIVERS = $DIR_PLAT/drivers 
export DIR_PLAT_HIKEY   = $DIR_PLAT/hikey960
export DIR_PLAT_IMX     = $DIR_PLAT/imx8qm
export DIR_PLAT_QEMU_ARM64   = $DIR_PLAT/qemu-aarch64-virt
export DIR_PLAT_QEMU_RISCV   = $DIR_PLAT/qemu-riscv64-virt
export DIR_PLAT_RPI4    = $DIR_PLAT/rpi4
export DIR_PLAT_TX2     = $DIR_PLAT/tx2
export DIR_PLAT_ULTRA   = $DIR_PLAT/ultra96
export DIR_PLAT_ZCU102  = $DIR_PLAT/zcu102
export DIR_PLAT_ZCU104  = $DIR_PLAT/zcu104

cd $DIR_SRC
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN SRC DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_ARCH_ARM
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_ARCH_ARM/inc/arch/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi


cd $DIR_ARCH_RISCV
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_ARCH_RISCV/inc/arch/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_CORE
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_CORE/inc/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_LIB
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_LIB/inc/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi


################################# drivers of platforms

cd $DIR_PLAT_DRIVERS/8250_uart/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_DRIVERS/8250_uart/inc/drivers/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_DRIVERS/nxp_uart/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_DRIVERS/nxp_uart/inc/drivers/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_DRIVERS/pl011_uart/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_DRIVERS/pl011_uart/inc/drivers/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_DRIVERS/sbi_uart/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_DRIVERS/sbi_uart/inc/drivers/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi


cd $DIR_PLAT_DRIVERS/zynq_uart/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_DRIVERS/zynq_uart/inc/drivers/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

###########################################################

cd $DIR_PLAT_HIKEY/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_HIKEY/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_IMX/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_IMX/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_QEMU_ARM64/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_QEMU_ARM64/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_QEMU_RISCV/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_QEMU_RISCV/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_QEMU_RISCV/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_QEMU_RISCV/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_RPI4/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_RPI4/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi


cd $DIR_PLAT_TX2/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_TX2/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_ULTRA/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_ULTRA/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_ZCU102/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_ZCU102/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi

cd $DIR_PLAT_ZCU104/
shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN ARCH/ARM DIR
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
  cd $DIR_PLAT_ZCU104/inc/plat/
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi



