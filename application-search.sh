#!/bin/bash

   echo ""
   echo -n "What is the application name? "; read application
   echo "Searching for '$application'..."

       # Run flatpak list and grep for the application
       echo ""
       echo "Checking if it is a Flatpak application"
       echo ""
       flatpak list | grep "$application"

       # Run apt search for the application
       echo ""
       echo "Checking if it is a Debian application"
       echo ""
       apt list --installed 2>/dev/null | grep "$application"

       # Run ls | grep search for the application in /usr/bin
       echo ""
       echo "Checking if it is installed in /usr/bin"
       echo ""
       ls /usr/bin | grep "$application" 
