#!/usr/bin/env bash

echo "------------------------------------------------------"
echo "What test would you like to run?"
echo "------------------------------------------------------"

echo "1) Unigine Heaven"
echo "2) GPU"

echo "------------------------------------------------------"
read testChoice

if [ $testChoice = 1 ]; then
   pushd ~/Downloads
   wget https://assets.unigine.com/d/Unigine_Heaven-4.0.run
   chmod +x Unigine_Heaven-4.0.run
   ./Unigine_Heaven-4.0.run
   cd Unigine_Heaven-4.0/
   ./heaven
   popd

elif [ $testChoice = 2 ]; then
   # Checking if the tools are installed"
   if ! [ -x "$(command -v stress-ng)" ];
   then
     echo "Installing system76-cuda-latest..."
     sudo apt install -y system76-cuda-latest
   fi
   echo "Testing"

fi
