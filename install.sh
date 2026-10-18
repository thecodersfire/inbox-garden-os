#!/usr/bin/env bash
set -euo pipefail
if [[ "${EUID}" -eq 0 ]]; then echo "Run as your normal user; sudo prompts when required." >&2; exit 1; fi
if ! command -v apt-get >/dev/null || ! grep -qi ubuntu /etc/os-release; then echo "Ubuntu is required." >&2; exit 1; fi
sudo apt-get update
sudo apt-get install -y flatpak gnome-software gnome-software-plugin-flatpak
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
mapfile -t apps < <(grep -Ev '^([[:space:]]*#|[[:space:]]*$)' "$(dirname "$0")/apps.txt")
flatpak install --user --noninteractive flathub "${apps[@]}"
echo "Setup complete. Open Software to browse apps."
