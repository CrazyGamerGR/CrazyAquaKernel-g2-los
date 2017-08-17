#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
##########################################
export ARCH=arm
export CROSS_COMPILE=/home/francesco/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
##########################################
mkdir outputd800
mkdir outputd801
mkdir outputd802
mkdir outputd803
mkdir outputf320
mkdir outputl01f
mkdir outputls980
mkdir outputvs980
mkdir outputlgl22
##########################################
make -C $(pwd) O=outputd800 cyanogenmod_d800_defconfig 
make -j64 -C $(pwd) O=outputd800

make -C $(pwd) O=outputd801 cyanogenmod_d801_defconfig 
make -j64 -C $(pwd) O=outputd801

make -C $(pwd) O=outputd802 cyanogenmod_d802_defconfig 
make -j64 -C $(pwd) O=outputd802

make -C $(pwd) O=outputd803 cyanogenmod_d803_defconfig 
make -j64 -C $(pwd) O=outputd803

make -C $(pwd) O=outputf320 cyanogenmod_f320_defconfig 
make -j64 -C $(pwd) O=outputf320

make -C $(pwd) O=outputl01f cyanogenmod_f320_defconfig 
make -j64 -C $(pwd) O=outputl01f

make -C $(pwd) O=outputls980 cyanogenmod_ls980_defconfig 
make -j64 -C $(pwd) O=outputls980

make -C $(pwd) O=outputvs980 cyanogenmod_vs980_defconfig 
make -j64 -C $(pwd) O=outputvs980

make -C $(pwd) O=outputlgl22 cyanogenmod_lgl22_defconfig 
make -j64 -C $(pwd) O=outputlgl22
##########################################
cp outputd800/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd801/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd802/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd803/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputf320/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputl01f/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputls980/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputvs980/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputlgl22/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
##########################################
chmod 777 tools_crazy/dtbToolCM
##########################################
tools_crazy/dtbToolCM -2 -o outputd800/arch/arm/boot/dt.img -s 2048 -p outputd800/scripts/dtc/ outputd800/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputd801/arch/arm/boot/dt.img -s 2048 -p outputd801/scripts/dtc/ outputd801/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputd802/arch/arm/boot/dt.img -s 2048 -p outputd802/scripts/dtc/ outputd802/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputd803/arch/arm/boot/dt.img -s 2048 -p outputd803/scripts/dtc/ outputd803/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputf320/arch/arm/boot/dt.img -s 2048 -p outputf320/scripts/dtc/ outputf320/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputl01f/arch/arm/boot/dt.img -s 2048 -p outputl01f/scripts/dtc/ outputl01f/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputls980/arch/arm/boot/dt.img -s 2048 -p outputls980/scripts/dtc/ outputls980/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputvs980/arch/arm/boot/dt.img -s 2048 -p outputvs980/scripts/dtc/ outputvs980/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputlgl22/arch/arm/boot/dt.img -s 2048 -p outputlgl22/scripts/dtc/ outputlgl22/arch/arm/boot/
##########################################
cp outputd800/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D800/zImage

cp outputd800/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D800/dt.img

cp outputd801/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D801/zImage

cp outputd801/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D801/dt.img

cp outputd802/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D802/zImage

cp outputd802/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D802/dt.img

cp outputd803/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D803/zImage

cp outputd803/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D803/dt.img

cp outputf320/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-F320/zImage

cp outputf320/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-F320/dt.img

cp outputl01f/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-L01F/zImage

cp outputl01f/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-L01F/dt.img

cp outputls980/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-LS980/zImage

cp outputls980/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-LS980/dt.img

cp outputvs980/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-VS980/zImage

cp outputvs980/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-VS980/dt.img

cp outputlgl22/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-LGL22/zImage

cp outputlgl22/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-LGL22/dt.img
##########################################
cd /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D800
zip -r9 CrazyAquaKernel-CM14.1-V1.0-D800.zip * -x CrazyAquaKernel-CM14.1-V1.0-D800.zip

cd /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D801
zip -r9 CrazyAquaKernel-CM14.1-V1.0-D801.zip * -x CrazyAquaKernel-CM14.1-V1.0-D801.zip

cd /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D802
zip -r9 CrazyAquaKernel-CM14.1-V1.0-D802.zip * -x CrazyAquaKernel-CM14.1-V1.0-D802.zip

cd /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-D803
zip -r9 CrazyAquaKernel-CM14.1-V1.0-D803.zip * -x CrazyAquaKernel-CM14.1-V1.0-D803.zip

cd /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-F320
zip -r9 CrazyAquaKernel-CM14.1-V1.0-F320.zip * -x CrazyAquaKernel-CM14.1-V1.0-F320.zip

cd /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-L01F
zip -r9 CrazyAquaKernel-CM14.1-V1.0-L01F.zip * -x CrazyAquaKernel-CM14.1-V1.0-L01F.zip

cd /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-LS980
zip -r9 CrazyAquaKernel-CM14.1-V1.0-LS980.zip * -x CrazyAquaKernel-CM14.1-V1.0-LS980.zip

cd /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-VS980
zip -r9 CrazyAquaKernel-CM14.1-V1.0-VS980.zip * -x CrazyAquaKernel-CM14.1-V1.0-VS980.zip

cd /home/francesco/CrazyAquaKernel_g2_CM14/CrazyAquaKernel-CM14.1-V1.0-LGL22
zip -r9 CrazyAquaKernel-CM14.1-V1.0-LGL22.zip * -x CrazyAquaKernel-CM14.1-V1.0-LGL22.zip
