
#!/bin/bash
# Funciones para gestionar las configuraciones de pantalla

primary_screen(){
  xrandr --output eDP1 --auto --primary --output HDMI1 --off
}

duplicate_screen(){
  # Se asegura de que ambas pantallas estén configuradas para duplicarse
  xrandr --output eDP1 --auto --output HDMI1 --auto --same-as eDP1
}

extended_screen(){
  xrandr --output eDP1 --auto --output HDMI1 --auto --right-of eDP1
}

second_screen_only(){ 
  xrandr --output eDP1 --off --output HDMI1 --auto
}

# Opciones para seleccionar la configuración de pantalla
OPCIONES="Pantalla principal\nDuplicar pantalla\nAmpliar pantalla\nSegunda pantalla"

# Selecciona la opción usando dmenu
ELECCION=$(echo -e "$OPCIONES" | dmenu -i)

# Aplica la configuración seleccionada
case "$ELECCION" in
        "Pantalla principal") primary_screen ;;
        "Duplicar pantalla") duplicate_screen ;;
        "Ampliar pantalla") extended_screen ;;
        "Segunda pantalla") second_screen_only ;;
        *) echo "No se seleccionó ninguna opción válida." ;;
esac
