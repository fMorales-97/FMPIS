#!/bin/sh

# Definir variables
GREEN="\033[0;32m"
RED="\033[0;31m"
BOLD="\033[1m"
NC="\033[0m"

# Comienza el script
echo "¿Quiere iniciar la primera parte del script? [y/n]"
read ANSWER
case "$ANSWER" in
  y)  
    echo "Esto puede tardar unos minutos..."
    sleep 1
    echo ""
    echo "Configuraciones generales"
    sleep 1
    echo ""
    echo -e "${BOLD}${GREEN}Actualizando los mirrors${NC}"
    sleep 1
    sudo pacman-mirrors -f
    echo ""
    echo -e "${BOLD}${GREEN}Actualizando el sistema${NC}"
    sleep 1
    sudo pacman -Syu
    echo ""
    echo -e "${BOLD}${GREEN}Ajustando swappiness${NC}"
    sleep 1
    echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.d/100-manjaro.conf
    echo ""
    echo "Instalación de programas con pacman"
    sleep 1
    PROGRAMAS_PAC=(
      # Desarrollo web ---------------------------------------------
      'firefox'
      'chromium'
      'brave'
      'code'
      'inkscape'
      'gimp'
      'mysql-workbench'

      # Aplicaciones favoritas -------------------------------------
      'alacritty'
      'lollypop'
      'signal-desktop'

      # Emuladores -------------------------------------------------
      'dolphin-emu'

      # Escritura con groff ----------------------------------------
      'zathura'
      'zathura-pdf-poppler'
      'zathura-ps'
      'vim'
      'aspell'
      'aspell-en'
      'aspell-es'

      # Utilidades -------------------------------------------------
      'yay'
      'tlp'
      'gufw'
      'cmatrix'
      'htop'
    )
    for PROGRAMA_PAC in "${PROGRAMAS_PAC[@]}"; do
      echo ""
      echo -e "${BOLD}${GRENN}Instalando:${NC} ${PROGRAMA_PAC}"
      sleep 1
      sudo pacman -S "${PROGRAMA_PAC}" --noconfirm --needed
    done
    echo ""
    echo "Instalación de programas con flatpak"
    sleep 1
    PROGRAMAS_FLAT=(
      # Desarrollo web ---------------------------------------------
      'com.getpostman.Postman'

      # Aplicaciones favoritas -------------------------------------
      'com.spotify.Client'
      'com.stremio.Stremio'
        
      # Emuladores -------------------------------------------------
      'org.libretro.RetroArch'
        
      # Ofimatica --------------------------------------------------
      'com.wps.Office'
      'org.onlyoffice.desktopeditors'

      # Utilidades -------------------------------------------------
      'com.microsoft.Teams'
    )
    for PROGRAMA_FLAT in "${PROGRAMAS_FLAT[@]}"; do
      echo ""
      echo -e "${BOLD}${GREEN}Instalando:${NC} ${PROGRAMA_FLAT}"
      sleep 1
      sudo flatpak install "${PROGRAMA_FLAT}"
    done
    echo ""
    echo "Instalación de programas con yay (AUR)"
    sleep 1
    PROGRAMAS_AUR=(
      # Desarrollo web ---------------------------------------------
      'figma-linux'
      'xmind-2020'
      'xampp'

      # Fuentes tipograficas ---------------------------------------
      'ttf-ms-fonts'
      'nerd-fonts-roboto-mono'

      # Utilidades -------------------------------------------------
      'auto-cpufreq-git'
      'vim-gruvbox-git'
      'vim-airline-gruvbox-git'
    )
    for PROGRAMA_AUR in "${PROGRAMAS_AUR[@]}"; do
      echo ""
      echo -e "${BOLD}${GREEN}Instalando:${NC} ${PROGRAMA_AUR}"
      sleep 1
      yay -S "${PROGRAMA_AUR}"
    done
    echo ""
    echo -e "${BOLD}${GREEN}La primera parte del script ha finalizado${NC}"
    ;;
  n)
    echo "Ha cancelado la operación"
    sleep 1
    ;;
  *)
    echo -e "${BOLD}${RED}Esa opción no es válida${NC}"
    sleep 1
    ;;
esac
