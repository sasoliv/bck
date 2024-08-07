#!/usr/bin/env bash

filePath="$1"
fileExtension="${filePath##*.}"
fileExtensionLower="$(printf "%s" "${fileExtension}" | tr '[:upper:]' '[:lower:]')"

case "${fileExtensionLower}" in
    json)
        jq --color-output < $1
        ;;
    jpg|png|jpeg|img)
        #kitty +kitten icat "$1"
        ;;
    *)
        bat -pp $1
        ;;
esac
