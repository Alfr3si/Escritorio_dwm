#!/bin/bash

eleccion=$(printf "Apagar\nReiniciar\nSuspender\nBloquear\nCerrar Sesion" | dmenu -i )

case "$eleccion" in
	"Apagar") systemctl poweroff ;;
	"Reiniciar") systemctl reboot ;;
	"Suspender") systemctl suspend ;;
	"Bloquear") slock ;;
	"Cerrar Sesion") kill -9 -1 ;;
	*) exit 1 ;;
esac
