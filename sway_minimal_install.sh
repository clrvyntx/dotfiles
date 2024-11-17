git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -si
cd ..

fonts="noto-fonts noto-fonts-cjk noto-fonts-emoji otf-font-awesome"
desktop="sway swaybg swayidle swaylock gammastep mako libnotify autotiling-rs polkit-gnome xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk xorg-xwayland qt5-wayland qt6-wayland"
utils="foot wmenu j4-dmenu-desktop firefox ranger-git imagemagick udisks2 dragon-drop vim wl-clipboard swayimg mpv grim slurp ufw"

paru -S --needed $fonts $desktop $utils

mkdir -p ~/.config
cp -r ./dotfiles/* ~/.config
cp -r ./sway_minimal/* ~/.config
mv ~/.config/bash_profile ~/.bash_profile
chmod +x ~/.config/sway/status.sh
sudo ufw enable
