#!/bin/bash

# Setting some variables

nix_update () {
    nix-update --version=branch $repoName
}

cat << EOF

Which repo are you updating today?
    1) COSMIC Edit
    2) COSMIC Term
    0) Exit
EOF
read repoChoice

if [ $repoChoice = 1 ]; then
    repoName=cosmic-edit
    cd ~/Projects/nixos/nixpkgs
    git checkout -b "$repoName"-update
    nix_update

elif [ $repoChoice = 2 ]; then
    repoName=cosmic-term
    cd ~/Projects/nixos/nixpkgs; git checkout -b update-cosmic-term
    git checkout -b "$repoName"-update
    nix_update
    
fi
