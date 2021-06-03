# DigiDoc4 Flatpak
**Notice:** Signing with SmartID and MobileID does not work. Signing with ID card works, you can also view the files and the signatures.

The central signing service uses a certificate authority that is not trusted in the Flatpak, therefore signing through it (with SmartID or MobileID) will fail. Flatpak can't use the host's certificate bundle, because DigiDoc4 uses openssl, which doesn't support p11-kit. Potential solutions:
1. Try to add the necessary certificate authority into the flatpak and make openssl use it. I've tried this and didn't succeed.
2. Wait and pray that this is handled upstream, possibly through the following steps:
    1. [Freedesktop releases this patch](https://gitlab.com/freedesktop-sdk/freedesktop-sdk/-/merge_requests/3798)
    2. `org.kde.Platform` upgrades to latest Freedesktop
    3. `qdigidoc4` upgrades to latest Qt (5.15)
    4. This Flatpak upgrades to latest `qdigidoc4`
3. `qdigidoc4` developers put some effort into packaging and solve this issue at its root

Reading material:
- https://github.com/flatpak/flatpak/issues/2721

# Install
https://github.com/oskarkook/qdigidoc-flatpak/releases/
```sh
flatpak install flathub org.kde.Platform//5.12
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
