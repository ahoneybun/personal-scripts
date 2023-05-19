#!/usr/bin/env bash

# Set the desired kernel version and architecture
KERNEL_VERSION="6.3.1"
ARCH="amd64"

# Install required dependencies
sudo apt-get update
sudo apt-get install -y build-essential libncurses-dev bison flex libssl-dev libelf-dev

# Download the kernel source code
mkdir ~/kernel
cd ~/kernel
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$KERNEL_VERSION.tar.xz
tar -xf linux-$KERNEL_VERSION.tar.xz
cd linux-$KERNEL_VERSION

# Configure the kernel
cp /boot/config-$(uname -r) .config
yes "" | make oldconfig

# Create a Debian package
make -j$(nproc) INSTALL_MOD_STRIP=1 bindeb-pkg

# Move the generated Debian package
mkdir ~/kernel-packages
mv ../*.deb ~/kernel-packages/

# Cleanup
make clean
make mrproper
cd ~
rm -rf ~/kernel

echo "Kernel build completed. Debian package created in ~/kernel-packages directory."

