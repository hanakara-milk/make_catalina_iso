#!/usr/bin/env bash
hdiutil create -o /tmp/Catalina.cdr -size 12000m -layout SPUD -fs HFS+J
hdiutil attach /tmp/Catalina.cdr.dmg -noverify -mountpoint /Volumes/install_build

sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia  --volume /Volumes/install_build --nointeraction

hdiutil detach "/Volumes/Install macOS Catalina"
hdiutil convert /tmp/Catalina.cdr.dmg -format UDTO -o /tmp/Catalina.iso

mv /tmp/Catalina.iso.cdr ~/Desktop/Catalina.iso
rm /tmp/Catalina.cdr.dmg
