###############################################################################################
#			      instalar los siguientes paquetes				      #
###############################################################################################

-sudo
-xclip
-lsd
-dunst 
-feh
-picom
-ueberzug
-pamixer
-brightnesctl
-ranger
-tar 
-zip
-flameshot
-git 
-curl
-brave
-neofetch
-discord
-networkmanager    (activar con > sudo systemctl NetworkManager.service enable)
-xrandr
-libnotify
-neovim
-pulseaudio
-pavucontrol
-sof-firmware    (este es para que detecte la tarjeta de sonido
a partir de intel 10gen en adelante  >activar con pulseaudio -k y luego pulseaudio --start)
-vlc
-ttf-dejavu
-noto-fonts
-ttf-liberation


uno de los principales es yay que para ello lo copiaremos de la pagina de arch  yay AUR

##esto es para flashear memorias usb por terminal este es un ejemplo ya que si es un hdd cambia
sudo dd if=/home/alfr3d/Downloads/archlinux-2024.11.01-x86_64.iso of=/dev/sda bs=4M status=progress && sync
