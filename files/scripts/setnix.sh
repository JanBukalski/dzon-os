#!/usr/bin/env bash
set -euo pipefail

# Instalacja Nixa przez instalator Determinate Systems
# Jest on zoptymalizowany pod systemy typu Atomic (Silverblue)
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install --no-confirm --init none

# Ważne: W systemach immutable /nix jest montowany jako wolumen lub tworzony symlink
# BlueBuild i Determinate Systems zajmą się resztą konfiguracji, aby Nix działał po restarcie.