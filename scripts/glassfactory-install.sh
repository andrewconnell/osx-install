#!/bin/sh

#Variables
DMG=(
   ~/Downloads/GlassFactory.dmg
)

# DOwnload DMG
curl https://glass-factory-client.s3.amazonaws.com/releases/GlassFactory-1.3.135.dmg >$DMG

# Attach DMG
hdiutil attach $DMG

# Copy App
cp -r /Volumes/GlassFactory/GlassFactory.app /Applications/GlassFactory.app

# Detach DMG
hdiutil unmount /Volumes/GlassFactory

# Remove DMG
rm $DMG