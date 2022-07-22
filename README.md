# DigiDoc4 Flatpak
DigiDoc4 is an application for digitally signing and encrypting documents.

This repo hosts the Flatpak wrapper for [DigiDoc4](https://github.com/open-eid/DigiDoc4-Client/).

## Install
https://github.com/oskarkook/qdigidoc-flatpak/releases/

## Extension
This Flatpak contains the necessary module for signing documents with your ID card through browsers.
Firefox is expected to be installed natively. If you're using a Flatpak version of Firefox, this
won't work. Chrome is not supported currently.

**BE AWARE! This breaks the security model of Flatpak, as the signing binary will be ran natively!**

You will need to install [this official extension](https://addons.mozilla.org/en-US/firefox/addon/token-signing2).
Additionally, you need to link the native host messaging manifest from the Flatpak into your Firefox
installation:
```sh
mkdir -p ~/.mozilla/native-messaging-hosts/
ln -s /var/lib/flatpak/app/ee.ria.qdigidoc4/current/active/files/lib/mozilla/native-messaging-hosts/ee.ria.esteid.json ~/.mozilla/native-messaging-hosts/
```

## Smartcard readers
If your smartcard reader is not recognized, please file an issue and provide your Linux distribution
name and version. The Flatpak pcsc integration depends on the daemon running on the host, which can
vary between distributions.

Ideally, the output from the following commands would be very helpful:
```sh
cat /etc/os-release | head -n 4
pcscd --version | head -n 1
```

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