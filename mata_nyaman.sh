#!/bin/bash

# ------------------------------
# 1. Update & Install Aplikasi Pendukung
# ------------------------------
sudo apt update -y
sudo apt install -y gammastep redshift redshift-gtk arc-theme papirus-icon-theme fonts-noto fonts-roboto fonts-ubuntu xfce4-terminal plank flameshot htop neofetch

# ------------------------------
# 2. Set Dark Theme & Icon
# ------------------------------
xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"

# ------------------------------
# 3. Aktifkan Anti-Aliasing Font
# ------------------------------
xfconf-query -c xsettings -p /Gtk/FontName -s "Noto Sans 11"
xfconf-query -c xsettings -p /Gtk/FontHinting -s "slight"
xfconf-query -c xsettings -p /Gtk/FontAntialias -s true

# ------------------------------
# 4. Jalankan Gammastep (Blue Light Filter)
# ------------------------------
# Suhu siang 5500K, malam 4000K, lokasi Jakarta -6.2, 106.8
gammastep -l -6.2:106.8 &

# ------------------------------
# 5. Jalankan Redshift sebagai Backup
# ------------------------------
redshift-gtk &

# ------------------------------
# 6. Terminal & Desktop Lembut
# ------------------------------
# Terminal: background gelap
xfconf-query -c xfce4-terminal -p /profiles/Profile0/background-color -s "#1e1e1e"
xfconf-query -c xfce4-terminal -p /profiles/Profile0/foreground-color -s "#dcdcdc"

# ------------------------------
# 7. Jalankan Dock (Plank)
# ------------------------------
plank &

# ------------------------------
# 8. Notifikasi: selesai
# ------------------------------
echo "✅ Semua setting mata nyaman sudah aktif!"
echo "Gunakan Dark Theme, Blue Light Filter & Font lembut."
