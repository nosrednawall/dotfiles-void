# Meus dotfiles para o i3wm  - Kiss Keep It Simple Stupid

```sh
 ___  __    ___  ________   ________      
|\  \|\  \ |\  \|\   ____\ |\   ____\     
\ \  \/  /|\ \  \ \  \___|_\ \  \___|_    
 \ \   ___  \ \  \ \_____  \\ \_____  \   
  \ \  \\ \  \ \  \|____|\  \\|____|\  \  
   \ \__\\ \__\ \__\____\_\  \ ____\_\  \ 
    \|__| \|__|\|__|\_________\\_________\
                   \|_________\|_________| 
```

### Instalar os programas antes de executar o script dos dotfiles, ele são:

I3
```sh
sudo xbps-install -S i3-gaps dunst feh pasystray compton scrot NetworkManager ImageMagick
```

Lockscreen, power manager, drivers
```sh
sudo xbps-install betterlockscreen xautolock xfce4-power-manager
```

Config themes gtk and qt
```sh
sudo xbps-install lxappearance qt5ct
```

Players
```sh
sudo xbps-install mpv mpd ncmpcpp playerctl
```
### Programas complementares
```sh
sudo apt install mpv cmus fusesmb gvfs-backends thunar thunar-gtkhash materia-gtk-theme breeze-cursor-theme qbittorrent arc arj cabextract lhasa p7zip p7zip-full p7zip-rar rar unrar unace unzip xz-utils zip dialog compton-conf libreoffice xarchiver detox geany kdeconnect moc
```

### Icones e themas
```sh
wget -qO- https://git.io/papirus-icon-theme-install | sh
wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/materia-kde/master/install.sh 
```
### Criar as pastas padrão
```sh
mkdir -p ~/{Desktop,Documents,Downloads,Games,Videos,Musics/{animes,dramas,rock},Pictures/{abstratas,fotos,paisagens,wallpapers,ScreenShots},git,.programas,Podcasts}
```

### Bonus:Como diminuir a luz azul do monitor

Prmeiro instale o sct e depois abra o arquivo do crontab:
```sh
sudo xbps-install -S sct
crontab -e
```
em seguida cole as linhas abaixo no final do arquivo:
```sh
0 21 * * * /usr/bin/sct 4500
0 6 * * * /usr/bin/sct 
```
Créditos: [https://www.vivaolinux.com.br/dica/Como-suprimir-a-emissao-de-luz-azul-da-tela-via-linha-de-comando](https://www.vivaolinux.com.br/dica/Como-suprimir-a-emissao-de-luz-azul-da-tela-via-linha-de-comando)
pronto ;)
