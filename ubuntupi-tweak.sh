# Atado with alambre
# replace ubuntu-propaganda with a vanilla gnome experience

sudo apt update && sudo apt upgrade

sudo apt install vanilla-gnome-default-settings vanilla-gnome-desktop -y

# suggest: remove libreoffice & bloat

sudo apt purge ubuntu-desktop-raspi ubuntu-desktop-minimal


sudo apt install fonts-firacode

# remove snap

# suggest: install flatpak

snap remove --purge desktop-security-center firefox gnome-42-2204 gtk-common-themes prompting-client snap-store snapd-desktop-integration

sudo apt remove --purge snapd

sudo apt-mark hold snapd

# delete ~/snap & /root/snap/

apt install firefox-esr

sudo vcgencmd measure_temp
