#!/bin/bash

# Download the latest Cursor AppImage
wget https://downloader.cursor.sh/linux/appImage/x64 -O cursor.appimage

# Make the AppImage executable
chmod +x cursor.appimage

# Move the AppImage to the /opt directory
sudo mv cursor.appimage /opt/cursor.appimage

# Download the cursor icon
wget https://sourcegraph.com/assets/compare/cursor.svg -O /opt/cursor.png

# Create the desktop entry
sudo bash -c 'cat << EOF > /usr/share/applications/cursor.desktop
[Desktop Entry]
Name=Cursor
Exec=/opt/cursor.appimage
Icon=/opt/cursor.png
Type=Application
Categories=Development;
EOF'

echo "Cursor has been installed successfully!"
