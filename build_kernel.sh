#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
#
export ARCH=arm
export CROSS_COMPILE=/home/francesco/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
mkdir outputd800
mkdir outputd801
mkdir outputd802
mkdir outputd803
mkdir outputf320
mkdir outputl01f
mkdir outputls980
mkdir outputvs980
mkdir outputlgl22

make -C $(pwd) O=outputd800 lineageos_d800_defconfig 
make -j64 -C $(pwd) O=outputd800

make -C $(pwd) O=outputd801 lineageos_d801_defconfig 
make -j64 -C $(pwd) O=outputd801

make -C $(pwd) O=outputd802 lineageos_d802_defconfig 
make -j64 -C $(pwd) O=outputd802

make -C $(pwd) O=outputd803 lineageos_d803_defconfig 
make -j64 -C $(pwd) O=outputd803

make -C $(pwd) O=outputf320 lineageos_f320_defconfig 
make -j64 -C $(pwd) O=outputf320

make -C $(pwd) O=outputl01f lineageos_f320_defconfig 
make -j64 -C $(pwd) O=outputl01f

make -C $(pwd) O=outputls980 lineageos_ls980_defconfig 
make -j64 -C $(pwd) O=outputls980

make -C $(pwd) O=outputvs980 lineageos_vs980_defconfig 
make -j64 -C $(pwd) O=outputvs980

make -C $(pwd) O=outputlgl22 lineageos_lgl22_defconfig 
make -j64 -C $(pwd) O=outputlgl22

cp outputd800/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd801/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd802/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd803/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputf320/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputl01f/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputls980/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputvs980/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputlgl22/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage

./tools_crazy/dtbToolCM -o outputd800/arch/arm/boot/dt.img -s 2048 -p outputd800/scripts/dtc/ outputd800/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputd801/arch/arm/boot/dt.img -s 2048 -p outputd801/scripts/dtc/ outputd801/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputd802/arch/arm/boot/dt.img -s 2048 -p outputd802/scripts/dtc/ outputd802/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputd803/arch/arm/boot/dt.img -s 2048 -p outputd803/scripts/dtc/ outputd803/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputf320/arch/arm/boot/dt.img -s 2048 -p outputf320/scripts/dtc/ outputf320/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputl01f/arch/arm/boot/dt.img -s 2048 -p outputl01f/scripts/dtc/ outputl01f/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputls980/arch/arm/boot/dt.img -s 2048 -p outputls980/scripts/dtc/ outputls980/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputvs980/arch/arm/boot/dt.img -s 2048 -p outputvs980/scripts/dtc/ outputvs980/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputlgl22/arch/arm/boot/dt.img -s 2048 -p outputlgl22/scripts/dtc/ outputlgl22/arch/arm/boot/
