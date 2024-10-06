fonts="noto-fonts noto-fonts-cjk noto-fonts-emoji otf-font-awesome"
desktop="hyprland waybar swaybg swayidle swaylock gammastep dunst libnotify polkit-gnome xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xorg-xwayland qt5-wayland qt6-wayland"
utils="alacritty fuzzel firefox pcmanfm-gtk3 gvfs file-roller neovim wl-clipboard swayimg mpv grim slurp ufw materia-gtk-theme papirus-icon-theme"

sudo pacman -S --needed $fonts $desktop $utils

mkdir -p ~/.config
cp -r ./dotfiles/* ~/.config
cp -r ./hyprland/* ~/.config
mv ~/.config/bash_profile ~/.bash_profile
sudo ufw enable
