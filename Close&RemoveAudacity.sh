#!/bin/bash

    # Exit script if user cancels
    [[ "$response" = "Cancel Audacity Removal" ]] && exit 0

    #If not cancelled, delete application
    FileToDelete="/Applications/Audacity.app"
    if [ -d "$FileToDelete" ];  # Remove, if exists.
    then
    echo "Closing Audacity"
    killall "Audacity" || echo "Audacity wasn't open"
    echo "removing Audacity.app"
    rm -r "$FileToDelete"
    else
    echo "Audacity is not installed on this device"
    fi