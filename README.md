# DigiDoc4 Flatpak
## Install
https://github.com/oskarkook/qdigidoc-flatpak/releases/

## Extension
The Flatpak contains the necessary module for signing documents with ID card through browsers. You will need to install [this official extension](https://addons.mozilla.org/en-US/firefox/addon/token-signing2). Additionally, you need to link the native host messaging manifest from the Flatpak into your Firefox installation:
```sh
mkdir -p ~/.mozilla/native-messaging-hosts/
ln -s /var/lib/flatpak/app/ee.ria.qdigidoc4/current/active/files/lib/mozilla/native-messaging-hosts/ee.ria.esteid.json ~/.mozilla/native-messaging-hosts/
```

Firefox is expected to be installed natively. If you're using a Flatpak version of Firefox, this won't work. Chrome is not supported currently.

## Build
```sh
flatpak-builder qdigidoc4-build ee.ria.qdigidoc4.yml --force-clean
flatpak-builder --install --user qdigidoc4-build/ ee.ria.qdigidoc4.yml --force-clean
flatpak run ee.ria.qdigidoc4
```

## Export single-file bundle
1. [Export to repository](https://docs.flatpak.org/en/latest/flatpak-builder.html#exporting-to-a-repository)
2. [Create single-file bundle](https://docs.flatpak.org/en/latest/single-file-bundles.html)
