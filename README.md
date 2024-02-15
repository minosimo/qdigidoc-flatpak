# DigiDoc4 Flatpak

DigiDoc4 is an application for digitally signing and encrypting documents.

This repo hosts the Flatpak wrapper for [DigiDoc4](https://github.com/open-eid/DigiDoc4-Client/).

## Install

https://github.com/minosimo/qdigidoc-flatpak/releases/

## Smartcard readers

If your smartcard reader is not recognized, please file an issue and provide your Linux distribution
name and version. The Flatpak pcsc integration depends on the daemon running on the host, which can
vary between distributions.

Ideally, the output from the following commands would be very helpful:
```sh
cat /etc/os-release | head -n 4
pcscd --version | head -n 1
```

## Browser use

To use your ID card in the browser, please use the new [Web eID
solution](https://www.id.ee/en/article/the-latest-version-of-the-id-software-includes-an-innovative-web-eid-interface/).

The [web-eID "native component"](https://github.com/web-eid/web-eid-app) application must be installed for web-eID to work:
- Ubuntu users can install web-eid from [id.ee](https://www.id.ee/en/article/install-id-software/).
- Fedora users can make use of [this copr](https://copr.fedorainfracloud.org/coprs/abn/web-eid/) while waiting for web-eid to be included.
- In any case, builds can be downloaded from the [web-eID Actions](https://github.com/web-eid/web-eid-app/actions) (must be signed in to a github account to download).

Note that Web eID does not work with the Flatpak version of Firefox.

The DigiDoc software itself is not required to use Web eID.

This repository used to package the old `chrome-token-signing` binary, but it's
no longer needed.

## Making a release

- Update modules in [ee.ria.qdigidoc4.yml](./ee.ria.qdigidoc4.yml). Check the changelogs of the
  modules to ensure the build tree is still correct.
- Update [ee.ria.qdigidoc4.metainfo.xml](./ee.ria.qdigidoc4.metainfo.xml)
- Tag the release
- Run [the Github workflow action](https://github.com/oskarkook/qdigidoc-flatpak/actions/workflows/build.yml)
  on the tag
- Finalize the release and publish on Github

## Building the Flatpak

See [build.md](./build.md)
