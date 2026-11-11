#!/usr/bin/env bash
# Rebuilds public/game.jar. src/ is untouched; for the web build only SoundPlayer is swapped
# for web-shim/SoundPlayer.java (sound played by the browser instead of javax.sound).
# Needs JDK 17+. Java 17 target because the code uses arrow-style switch.
set -euo pipefail
cd "$(dirname "$0")"
rm -rf .build && mkdir .build
javac --release 17 -d .build $(ls src/*.java | grep -v '/SoundPlayer.java') web-shim/SoundPlayer.java
printf 'Main-Class: mygame\n' > .build/manifest.txt
jar cfm public/game.jar .build/manifest.txt -C .build .
rm -rf .build
echo "Built public/game.jar"
