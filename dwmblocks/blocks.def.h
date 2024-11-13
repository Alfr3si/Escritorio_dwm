
static const Block blocks[] = {
    /*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"", "date ' %d/%m/%Y 󱑁 %H:%M ;'", 5, 0}, // Fecha y hora
    {"", "ping -c 1 8.8.8.8 > /dev/null && echo '' || echo ''", 60, 0}, // Estado de la red (símbolo de conectado o no)
    {"", "cat /sys/class/power_supply/BAT0/capacity", 60, 0}, // Porcentaje de batería
};

// Establece el delimitador entre los comandos de estado. NULL significa sin delimitador.
static char delim[] = " | ";
static unsigned int delimLen = 5;
