#!/bin/bash

# When run from the vscode dev container this will build a .flatpak of the app.

set -e

set -x


projectId=codes.merritt.bargain


git submodule update --remote --merge --init --recursive
flatpak-builder --force-clean build-dir $projectId.yml --repo=repo
flatpak build-bundle repo $projectId.flatpak $projectId
