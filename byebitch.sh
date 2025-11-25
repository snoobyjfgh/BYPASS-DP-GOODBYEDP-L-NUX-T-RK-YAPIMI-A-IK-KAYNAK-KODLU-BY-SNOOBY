#!/bin/bash
# Made by Snooby

# Aktif Wi-Fi SSID'sini al
SSID=$(nmcli -t -f NAME connection show --active | head -n 1)

# DNS'i ayarla
sudo nmcli connection modify "$SSID" ipv4.dns "8.8.8.8 8.8.4.4"
sudo nmcli connection modify "$SSID" ipv4.ignore-auto-dns yes
sudo nmcli connection up "$SSID"

echo "✔️ DNS successfully updated for SSID: $SSID — made by snooby"
