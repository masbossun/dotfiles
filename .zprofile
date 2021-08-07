#::::::::::::#
#    PATH    #
#::::::::::::#

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.dotfiles/.oh-my-zsh

# https://github.com/sindresorhus/pure/issues/300 issue
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Path Windows User Dir
export SETIA=/mnt/c/Users/setia

# Path NODE
export PATH=$PATH:$HOME/dev/node/bin

# Path JAVA
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$HOME/bin:$JAVA_HOME/bin

# Path androidsdk
export ANDROID_SDK=$HOME/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export PATH=$PATH:$ANDROID_SDK/tools
export PATH=$PATH:$ANDROID_SDK/tools/bin
export PATH=$PATH:$ANDROID_SDK/platform-tools
export PATH=$PATH:$ANDROID_SDK/emulator
export PATH=$PATH:$ANDROID_HOME/bundle-tool

# Path Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# Path rustup & cargo
export PATH=$PATH:$HOME/.cargo/bin

# Webstorm
export PATH=$PATH:$HOME/webstorm/bin

# # Path OTFCC
# export PATH=$PATH:$HOME/.config/otfcc/bin/release-x64

# Path ccat
# export PATH=$PATH:$HOME/.config/ccat

#Path flutter
export PATH=$PATH:$HOME/flutter/bin

# Path Genymotion
# export PATH=$PATH:$HOME/genymotion

# Path Yarn
# export PATH="$PATH:$(yarn global bin)"

# Path NVIM
# export PATH=$PATH:$HOME/.config/nvim/autoload

# Path ReactTools
export REACT_EDITOR=nvim

# Path Snap
export PATH=$PATH:/snap/bin

# Path NPM
export PATH=~/.npm-global/bin:$PATH

# Path DEPOT_TOOLS
# export PATH=$PATH:$HOME/.local/share/depot_tools

# Dart Path
# export PATH=$PATH:$HOME/dart-sdk/sdk/out/ReleaseX64/dart-sdk/bin
# export PATH="$PATH":"$HOME/.pub-cache/bin"

# XDG CONFIG
export XDG_CONFIG_HOME="$HOME/.config"

# DENO
export DENO_INSTALL="$HOME/.local"
export PATH="$DENO_INSTALL/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Luarocks
export PATH=$PATH:$HOME/.luarocks/bin