#!/bin/bash

echo "------------------------"
echo "Updating System76 Docs |"
echo "------------------------"
echo ""
cd ~/git/docs; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------------------"
echo "Updating System76 Tech Docs |"
echo "-----------------------------"
echo ""
cd ~/git/tech-docs; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "--------------------------"
echo "Updating System76 Driver |"
echo "--------------------------"
echo ""
cd ~/git/system76-driver; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------"
echo "Updating JOSHUA |"
echo "-----------------"
echo ""
cd ~/git/joshua; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------"
echo "Updating Artoo  |"
echo "-----------------"
echo ""
cd ~/git/artoo; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------"
echo "Updating Assets |"
echo "-----------------"
echo ""
cd ~/git/assets; git pull; cd ..

echo ""
echo "Done"
echo ""
