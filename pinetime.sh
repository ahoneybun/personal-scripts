#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y build-essential cmake ninja-build gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib libudev-dev libusb-1.0-0-dev

# Clone the InfiniTime repository
git clone https://github.com/InfiniTimeOrg/InfiniTime.git
cd InfiniTime

# Build InfiniTime
mkdir build && cd build
cmake -GNinja ..
ninja

# Generate firmware
cd ../app
make genfw

# Flash the firmware to the device
make flash

# Cleanup
cd ../..
rm -rf InfiniTime

echo "InfiniTime build and flash complete."

