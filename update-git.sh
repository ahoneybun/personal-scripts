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

