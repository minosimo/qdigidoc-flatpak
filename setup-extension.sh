#!/usr/bin/env sh

# Native manifest
# See: https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Native_manifests#linux
ln -s /var/lib/flatpak/app/ee.ria.qdigidoc4/current/active/files/lib/mozilla/native-messaging-hosts/ee.ria.esteid.json ~/.mozilla/native-messaging-hosts/

# Extension
firefox /var/lib/flatpak/app/ee.ria.qdigidoc4/current/active/files/share/mozilla/extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{443830f0-1fff-4f9a-aa1e-444bafbc7319\}.xpi