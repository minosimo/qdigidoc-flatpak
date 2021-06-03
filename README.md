# Install
```sh
flatpak install qdigidoc4.flatpak
```

# Build
```sh
flatpak-builder qdigidoc4-build ee.ria.qdigidoc4.yml --force-clean
flatpak-builder --install --user qdigidoc4-build/ ee.ria.qdigidoc4.yml --force-clean
flatpak run ee.ria.qdigidoc4
```

# Export single-file bundle
1. [Export to repository](https://docs.flatpak.org/en/latest/flatpak-builder.html#exporting-to-a-repository)
2. [Create single-file bundle](https://docs.flatpak.org/en/latest/single-file-bundles.html)
