#!/bin/sh
set -e
WORKING_DIR=`pwd`
THIS_PATH=`readlink -f $0`
cd `dirname ${THIS_PATH}`
FULL_PATH=`pwd`/udemy
cd ${WORKING_DIR}
cat <<EOS > udemy.desktop
[Desktop Entry]
Name=UdemiX
Name[en_US]=UdemiX
Comment=Unofficial Udemy.com application for Linux
Exec="${FULL_PATH}/udemy"
Terminal=false
Categories=Office;TextEditor;Utility
Type=Application
Icon=${FULL_PATH}/resources/app/icon.png
StartupWMClass=udemy-binary
EOS
chmod +x udemy.desktop
## This can be updated if this path is not valid. 
cp -p udemy.desktop ~/.local/share/applications

