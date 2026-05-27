#!/bin/bash
if ! nc -z 127.0.0.1 27017 2>/dev/null; then
  echo "ERROR: MongoDB no está corriendo en localhost:27017"
  echo "Por favor inicia MongoDB antes de ejecutar este servicio."
  exit 1
fi
exec nodemon index.js
