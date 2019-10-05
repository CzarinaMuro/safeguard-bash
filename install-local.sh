#!/bin/bash

SourceDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TargetDir="$TargetDir"

# create scripts directory in your home directory if it doesn't exist
if [ ! -d "$TargetDir" ]; then
    mkdir -p "$TargetDir"
fi

# copy all of safeguard-bash into scripts directory
cp -R $SourceDir/src/* $TargetDir

# add the scripts directory to your path
if [[ ":$PATH:" != *":$TargetDir:"* ]]; then
    PATH="${PATH:+"$PATH:"}$TargetDir"
fi

