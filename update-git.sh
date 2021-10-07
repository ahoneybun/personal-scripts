#!/bin/bash

echo "------------------------"
echo "Updating System76 Docs |"
echo "------------------------"
echo ""
cd ~/Git/docs; git config pull.rebase false; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------------------"
echo "Updating System76 Tech Docs |"
echo "-----------------------------"
echo ""
cd ~/Git/tech-docs; git config pull.rebase false; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "--------------------------"
echo "Updating System76 Driver |"
echo "--------------------------"
echo ""
cd ~/Git/system76-driver; git config pull.rebase false; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-------------------"
echo "Updating Firmware |"
echo "-------------------"
echo ""
cd ~/Git/firmware; git config pull.rebase false; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------------"
echo "Updating HiDPI Daemon |"
echo "-----------------------"
echo ""
cd ~/Git/hidpi-daemon; git config pull.rebase false; git pull; cd ..

echo ""
echo "Done"
echo ""
