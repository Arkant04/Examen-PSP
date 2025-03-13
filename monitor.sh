#!/bin/bash

# Definir la URL que estamos monitoreando
URL="https://x.com"  # Cambiar por la URL de Twitter
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" $URL)

# Verificar si curl tuvo éxito
if [ $? -ne 0 ]; then
  echo "Error en la solicitud curl"
  exit 1
fi

# Obtener la fecha y hora actual
DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Mostrar lo que estamos escribiendo para depuración
echo "Fecha: $DATE, Código de Estado: $STATUS_CODE"

# Escribir en el archivo status_log.txt
echo "$DATE - $STATUS_CODE" >> status_log.txt
