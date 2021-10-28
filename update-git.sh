#!/bin/bash

echo "------------------------"
echo "Updating System76 Docs |"
echo "------------------------"
echo ""
cd ~/Git/docs; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------------------"
echo "Updating System76 Tech Docs |"
echo "-----------------------------"
echo ""
cd ~/Git/tech-docs; git pull; cd ..

echo ""
echo "Done"
echo ""

echo "--------------------------"
echo "Updating System76 Driver |"
echo "--------------------------"
echo ""
cd ~/Git/system76-driver; git pull; cd ..

echo ""
echo "Done"
echo ""

