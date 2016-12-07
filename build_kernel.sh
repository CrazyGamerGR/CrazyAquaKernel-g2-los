#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/francesco/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
mkdir outputd800
mkdir outputd801
mkdir outputd802
mkdir outputd803
mkdir outputf320
mkdir outputls980
mkdir outputvs980

make -C $(pwd) O=outputd800 cyanogenmod_d800_defconfig 
make -C $(pwd) O=outputd800

make -C $(pwd) O=outputd801 cyanogenmod_d801_defconfig 
make -C $(pwd) O=outputd801

make -C $(pwd) O=outputd802 cyanogenmod_d802_defconfig 
make -C $(pwd) O=outputd802

make -C $(pwd) O=outputd803 cyanogenmod_d803_defconfig 
make -C $(pwd) O=outputd803

make -C $(pwd) O=outputf320 cyanogenmod_f320_defconfig 
make -C $(pwd) O=outputf320

make -C $(pwd) O=outputls980 cyanogenmod_ls980_defconfig 
make -C $(pwd) O=outputls980

make -C $(pwd) O=outputvs980 cyanogenmod_vs980_defconfig 
make -C $(pwd) O=outputvs980

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
