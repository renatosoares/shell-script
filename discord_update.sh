#!/bin/bash

discord_update() {
    cd "$HOME/Downloads"

    wget -O discord.deb "https://discord.com/api/download?platform=linux&format=deb"

    sudo dpkg -i ./discord.deb

    rm -v discord.deb

    echo "✅ Discord updated successfully!"
}
