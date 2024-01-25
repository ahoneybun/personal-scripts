#!/bin/bash

echo "-----------------------"
echo "Updating COSMIC Edit  |"
echo "-----------------------"
echo ""
cd ~/Projects/system76/COSMIC/cosmic-edit; git checkout master_jammy && git pull; cd ..

echo ""
echo "Done"
echo ""

echo "----------------------"
echo "Updating COSMIC Term |"
echo "----------------------"
echo ""
cd ~/Projects/system76/COSMIC/cosmic-term; git checkout master_jammy && git pull; cd ..

echo ""
echo "Done"
echo ""

echo "-----------------------"
echo "Updating COSMIC Files |"
echo "-----------------------"
echo ""
cd ~/Projects/system76/COSMIC/cosmic-files; git checkout master_jammy && git pull; cd ..

echo "-----------------------"
echo "Updating COSMIC Store |"
echo "-----------------------"
echo ""
cd ~/Projects/system76/COSMIC/cosmic-store; git checkout master_jammy && git pull; cd ..

echo ""
echo "Done"
echo ""
