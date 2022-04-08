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

## Distro-based builds
The pcsc integration that is provided by Flatpak can be a bit fragile. The pcscd daemon on the host
and the client in the Flatpak have to match. They might not match if the versions differ or if the
package has been patched upstream. In that case, the card readers are not found, as [reported in
this issue](https://github.com/oskarkook/qdigidoc-flatpak/issues/10).

Since the pcscd version on the host can differ between distros and there might be patches to it as
well (as is the case with Fedora), we need to provide separate builds of the Flatpak, at least
temporarily until Flatpak maintainers find a more long-term solution.

As of now, there is the [configure-manifest.sh](./configure-manifest.sh) script, which will
overwrite the manifest, depending on the `DISTRO` environment variable, which must be provided
manually, e.g:

```sh
DISTRO=fedora-35 ./configure-manifest.sh
```

You can then run your build normally with the resulting manifest.

## Remote builds
Builds can also be started through [Github Actions](https://github.com/oskarkook/qdigidoc-flatpak/actions/workflows/build.yml).
