# Build
```sh
flatpak-builder build ee.ria.qdigidoc4.yml --force-clean
flatpak-builder --install --user build/ ee.ria.qdigidoc4.yml --force-clean
flatpak run ee.ria.qdigidoc4
```

## Export single-file bundle
1. [Export to repository](https://docs.flatpak.org/en/latest/flatpak-builder.html#exporting-to-a-repository)
2. [Create single-file bundle](https://docs.flatpak.org/en/latest/single-file-bundles.html)