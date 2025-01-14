#!/bin/bash

   echo ""
   echo -n "What is the application name? "; read application
   echo "Searching for '$application'..."

       # Run flatpak list and grep for the application
       flatpak list | grep "$application"

       # Run apt search for the application
       apt list --installed | grep "$application" 2>/dev/null
