#!/bin/bash
script_location="/usr/local"
path_location="/usr/local/bin"
current_location="$(pwd)"

# Clone
cd "$script_location"
git clone --recursive https://github.com/Lucaslah/ice-shell

# Add to $PATH
cd "$path_location"
ln -s "$script_location/ice/ice" .
echo "Ice successfully installed to $script_location/ice"

# Move back
cd "$current_location"
