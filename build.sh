#!/bin/bash

IMAGEROOT=${pwd}

cd image/home/avdock/Android/Sdk
ln -s $HOME/Android/Sdk/emulator/
cd system-images/android-32/google_apis_playstore
ln -s $HOME/Android/Sdk/system-images/android-32/google_apis_playstore/
cd $IMAGEROOT/image/home/avdock/