echo start cloning repos
VT=vendor/realme/RMX3031/RMX3031-vendor.mk
if ! [ -a $VT ]; then git clone https://github.com/n4bi10p/proprietary_vendor_realme_RMX3031 vendor/realme/RMX3031
fi
KT=kernel/realme/RMX3031/Makefile
if ! [ -a $KT ]; then git clone --depth=1 https://github.com/n4bi10p/android_kernel_realme_mt6893 kernel/realme/mt6893
fi
git clone https://github.com/n4bi10p/manshu_vendor_realme_RMX3031-firmware vendor/realme/RMX3031-firmware

cd kernel/realme/mt6893 && curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash - && cd ../../../

echo end cloning now doo the bringups
