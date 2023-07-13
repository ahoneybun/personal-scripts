#!/usr/bin/env bash

echo "------------------------------------------------------"
echo "What component would you like to test?"
echo "------------------------------------------------------"

echo "1) Drives"
echo "2) GPU"

echo "------------------------------------------------------"
read testChoice

if [ $testChoice = 1 ]; then
   bash drive-test.sh

elif [ $testChoice = 2 ]; then
   bash gpu-test.sh

fi