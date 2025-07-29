#!/bin/bash

IMAGEROOT=$(pwd)

cd image/home/avdock/
mkdir -p Android/Sdk && cd Android/Sdk
ln -s $HOME/Android/Sdk/emulator/
mkdir -p system-images/android-30/google_apis_playstore
cd system-images/android-30/google_apis_playstore
ln -s $HOME/Android/Sdk/system-images/android-30/google_apis_playstore/
cd $IMAGEROOT/image/home/avdock/
mkdir -p .android/avd
cd .android/avd
ln -s $HOME/.android/avd/sdcard.img
ln -s $HOME/.android/avd/Magisk.avd

cd $IMAGEROOT
podman build .