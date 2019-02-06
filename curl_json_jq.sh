#!/usr/bin/env bash
#https://medium.com/cameron-nokes/working-with-json-in-bash-using-jq-13d76d307c4

# get the URL of the current Astronomy Picture of the Day (APOD)
#apod_url=$(curl -s https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY | jq -r '.hdurl')

# get just the image name from the URL
#filepath=$(basename "$apod_url")

# Now get the image and save it 
#curl -s -o "$filepath" "$apod_url"

# Use AppleScript to set it as the wallpaper
#osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$PWD/$filepath\""

# Ejemplo
#curl -s "https://gist.githubusercontent.com/Frankz/7cf8e54da67cb7c392b41d3f302612de/raw/9795e479ee878b14c801490722c9e36cb1fa91cd/tarifas-electricas.json" | jq '.tarifa[1].valor' 
# OUTPUT: "2,672"

# read 
# https://ryanstutorials.net/bash-scripting-tutorial/bash-input.php

httpRequest="curl -s"
#jsonUrl=$1 # Json URL
echo "- Specified URL:"
read jsonUrl
echo ""
echo "- Specified Object(json query):"
read query
echo ""
result=$($httpRequest $jsonUrl | jq -c $query)
echo ""
echo "======"
echo ""
echo "RESULT: "$result

