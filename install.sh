#!/bin/bash

INSTALL_DIR="${1:=$ARDUINO_LIB}"


if [[ ! -d "$ARDUINO_LIB" ]]; then
	echo "Please set ARDUINO_LIB to arduino library dir or provide directory"
	exit 1
fi

LIB_DIR="${ARDUINO_LIB}/LinkedList"

if [[ -d "$LIB_DIR" ]]; then
	echo "Removing old version of the library"
	rm -rf $LIB_DIR
fi

echo "Installing library inside ${LIB_DIR}"

mkdir $LIB_DIR
cp -r . $LIB_DIR

echo "Installation complete"
