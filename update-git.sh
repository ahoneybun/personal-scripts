#!/bin/bash

echo "------------------------"
echo "Updating System76 Docs |"
echo "------------------------"
echo ""
cd ~/Git/Github/docs; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------------------"
echo "Updating System76 Tech Docs |"
echo "-----------------------------"
echo ""
cd ~/Git/Github/tech-docs; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "--------------------------"
echo "Updating System76 Driver |"
echo "--------------------------"
echo ""
cd ~/Git/Github/system76-driver; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------"
echo "Updating JOSHUA |"
echo "-----------------"
echo ""
cd ~/Git/Github/joshua; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------"
echo "Updating Artoo  |"
echo "-----------------"
echo ""
cd ~/Git/Github/artoo; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------"
echo "Updating Assets |"
echo "-----------------"
echo ""
cd ~/Git/Github/assets; git pull; cd ..

echo ""
echo "Done"
echo ""
