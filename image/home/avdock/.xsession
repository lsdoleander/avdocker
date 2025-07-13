
mate-session

export EMU_HOME=$HOME/Android/Sdk/emulator/

$EMU_HOME/emulator -no-audio -no-snapshot-load -avd Magisk > /dev/null 2>&1 &
