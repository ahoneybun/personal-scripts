#!/usr/bin/env bash

echo "------------------------------------------------------"
echo "What test would you like to run?"
echo "------------------------------------------------------"

echo "1) Average Temperature"

echo "------------------------------------------------------"
read testChoice

if [ $testChoice = 1 ]; then
    # Checking if the tools are installed"
    if ! [ -x "$(command -v lm-sensors)" ];
    then
      echo "Installing lm-sensors..."
      sudo apt install -y lm-sensors
    fi

    mkdir ~/temp-test-data
    pushd ~/temp-test-data
    sensors > ~/temp-test-data/test1.txt
    sleep 2
    sensors > ~/temp-test-data/test2.txt
    popd

elif [ $testChoice = 2 ]; then

    echo "Testing"

fi