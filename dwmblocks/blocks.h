
static const Block blocks[] = {
    /*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {" ", "date '+%d/%m/%Y 󱑁 %H:%M ;'", 5, 0}, // Fecha y hora con punto y coma
    {"", "ping -c 1 8.8.8.8 > /dev/null && echo '  ' || echo '  '", 3, 0}, // Estado de la red (símbolo de conectado o no)
    {" ", "cat /sys/class/power_supply/BAT0/capacity | awk '{printf \"%s \", $0}'", 30, 0}, // Porcentaje de batería con espacios
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "";
static unsigned int delimLen = 0;
