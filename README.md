# DigiDoc4 Flatpak

DigiDoc4 is an application for digitally signing and encrypting documents.

This repo hosts the Flatpak wrapper for [DigiDoc4](https://github.com/open-eid/DigiDoc4-Client/).

## NOTICE

This software is currently not maintained. It might work, might not. The author is no longer using Linux.

If you wish to take over maintenance, please open a PR that updates it to the latest version and comment under the PR that you'd like to continue maintaining this repo. I will hand it over if the PR works.

## Install

https://github.com/oskarkook/qdigidoc-flatpak/releases/

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
For Linux users, the DigiDoc software itself is not required to use Web eID.
Note that Web eID does not work with the Flatpak version of Firefox.

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
