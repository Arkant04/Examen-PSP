#!/bin/bash

# URL a monitorizar
URL="https://x.com"

# Realizar una solicitud HTTP con curl y obtener el código de estado
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" $URL)

# Obtener la fecha y hora actual
DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Guardar el código de estado y la fecha en un archivo de registro
echo "$DATE - $STATUS_CODE" >> status_log.txt
