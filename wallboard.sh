user=$(whoami)

echo -e "\e[31m-----------------\e[0m"
echo -e "\e[31mBS Arch Install Script\e[0m"
echo -e "\e[31m----------------\e[0m"

echo -e "\e[35m-----------------\e[0m"
echo -e "\e[35mBase DTE installing ...... \e[35m"




sudo pacman -Sy
sudo pacman -S --noconfirm \
htop \
fakeroot \
minizip \
go \
base-devel \
xorg \
xorg-xinit \
ttf-dejavu \
sxhkd \
ranger \
dmenu \
bluez \
bluez-utils \
pulseaudio \
pavucontrol \
picom \
bspwm \
terminator \
samba \
feh \
rsync \
signal-desktop \
speedtest-cli \
python3 \ 
lxappearance \
unzip \
pcmanfm \
udiskie \
firefox




#yay install
git clone https://aur.archlinux.org/yay.git
chown $user:$user ./yay
cd yay
makepkg -si
cd ..
rm -r -f ./yay/

yay -S  ttf-unifont
yay -S  siji-git
yay -S  ttf-font-awesome
yay -S  ttf-material-design-icons
yay -S  polybar
yay -S dracula-gtk-theme
yay -S xscreensaver-arch-logo

cp -r ./wallboard_config/Xauthority ~/.Xauthority
cp -r ./wallboard_config/bash_profile ~/.bash_profile
cp -r ./wallboard_config/bashrc ~/.bashrc
cp -r ./wallboard_config/xinitrc ~/.xinitrc
cp -r ./wallboard_config/xscreensaver ~/.xscreensaver
cp -rf ./wallboard_config/config/* ~/.config/
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/scripts/speedtest/polybar-speedtest

unzip Dracula.zip
sudo cp -R Dracula /usr/share/icons/

yay -Scc --noconfirm
sudo pacman -Scc noconfirm




