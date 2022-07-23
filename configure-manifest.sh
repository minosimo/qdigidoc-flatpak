#!/usr/bin/env bash
MANIFEST="ee.ria.qdigidoc4.yml"

if [[ "$DISTRO" != "fedora" ]]; then
  sed -i -z 's/\n      - type: patch\n        path: pcsc\/pcsc-fedora.patch//' $MANIFEST
fi