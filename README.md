# DigiDoc4 Flatpak
## Install
https://github.com/oskarkook/qdigidoc-flatpak/releases/

## Extension
The Flatpak contains the necessary module for signing documents with ID card through browsers. We also package a minimally-modified version of the extension that knows where to call the module from. These are inactive on their own (Flatpaks can't install the extension on your system), but calling the following script will add the extension to Firefox:
```sh
./setup-extension.sh
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
