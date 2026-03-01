fonts="noto-fonts noto-fonts-cjk noto-fonts-emoji otf-font-awesome"
desktop="sway waybar swaybg swayidle swaylock gammastep mako libnotify autotiling-rs polkit-gnome xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk xorg-xwayland qt5-wayland qt6-wayland"
utils="foot fuzzel firefox pcmanfm gvfs file-roller neovim wl-clipboard swayimg mpv grim slurp ufw materia-gtk-theme papirus-icon-theme"

sudo pacman -S --needed $fonts $desktop $utils

mkdir -p ~/.config
cp -r ./dotfiles/* ~/.config
mv ~/.config/bash_profile ~/.bash_profile

sudo ufw enable
