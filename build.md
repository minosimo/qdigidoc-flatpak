# Build

## Building locally

To build the application locally, you can use the following commands:
```sh
flatpak-builder build ee.ria.qdigidoc4.yml --force-clean
flatpak-builder --install --user build/ ee.ria.qdigidoc4.yml --force-clean
flatpak run ee.ria.qdigidoc4
```

To export a single-file bundle, refer to:
1. [Exporting to a repository](https://docs.flatpak.org/en/latest/flatpak-builder.html#exporting-to-a-repository)
2. [Single-file bundles](https://docs.flatpak.org/en/latest/single-file-bundles.html)

## Remote builds

Builds can also be started through [Github Actions](https://github.com/oskarkook/qdigidoc-flatpak/actions/workflows/build.yml).
