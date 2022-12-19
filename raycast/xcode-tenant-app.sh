#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title xcode Tenant App
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName xed

# Documentation:
# @raycast.description Open Tenant App iOS directories on xcode
# @raycast.author Ryan Setiagi
# @raycast.authorURL https://masbossun.dev

xed -b "$HOME/repo/rkt-tenant-app/ios"
