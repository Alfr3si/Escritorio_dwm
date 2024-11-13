
# Ruta donde están los wallpapers
Wallpapers_dir="/home/alfr3d/Wallpapers"

# Obtener solo los nombres de los archivos en lugar de las rutas completas
Wallpaper=$(find "$Wallpapers_dir" -type f -printf "%f\n" | dmenu -i -l 30)

# Verificar si se seleccionó una imagen
if [ -n "$Wallpaper" ]; then
    # Cambiar el fondo de pantalla usando la ruta completa
    feh --bg-scale "$Wallpapers_dir/$Wallpaper"
fi
