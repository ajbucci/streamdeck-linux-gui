python flatpak-poetry-generator --production poetry.lock
flatpak-builder --force-clean --repo=flatpak-streamdeck build/ io.github.streamdeck-linux-gui.yaml --verbose
flatpak remote-add --user flatpak-streamdeck flatpak-streamdeck --no-gpg-verify
flatpak uninstall io.github.streamdeck-linux-gui
flatpak --user install flatpak-streamdeck io.github.streamdeck-linux-gui