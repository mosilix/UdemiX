#!/bin/bash
PD=`pwd`
INSTALL_DIR=$PD"/udemy"
echo $INSTALL_DIR
mkdir -p $INSTALL_DIR
tar xvf $PD/udemy-linux-x64.tar.xz -C $INSTALL_DIR --strip 1
/bin/bash $PD/create_shortcut.sh
