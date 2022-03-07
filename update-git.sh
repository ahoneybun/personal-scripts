#!/bin/bash

echo "------------------------"
echo "Updating System76 Docs |"
echo "------------------------"
echo ""
cd ~/Projects/system76/docs; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------------------"
echo "Updating System76 Tech Docs |"
echo "-----------------------------"
echo ""
cd ~/Projects/system76/tech-docs; git pull; cd .

echo ""
echo "Done"
echo ""

echo "-------------------"
echo "Updating Careteam |"
echo "-------------------"
echo ""
cd ~/Projects/system76/careteam; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "--------------------------"
echo "Updating System76 Driver |"
echo "--------------------------"
echo ""
cd ~/Projects/system76/system76-driver; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "--------------"
echo "Updating QMK |"
echo "--------------"
echo ""
cd ~/Projects/system76/qmk_firmware; git pull; make git-submodule; cd ..

echo ""
echo "Done"
echo ""

echo "-------------------"
echo "Updating Coreboot |"
echo "-------------------"
echo ""
cd ~/Projects/system76/coreboot; git pull; git submodule update --init --checkout; cd ..

echo ""
echo "Done"
echo ""

echo "------------------------"
echo "Updating Open Firmware |"
echo "------------------------"
echo ""
cd ~/Projects/system76/firmware-open; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "--------------------------"
echo "Updating Closed Firmware |"
echo "--------------------------"
echo ""
cd ~/Projects/system76/firmware; git pull; cd ..

echo ""
echo "Done"
echo ""