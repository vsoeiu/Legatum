#!/bin/bash

# --- PASO 1: Instalación de Dependencias ---
# Usamos el comando de Python que Railway establece ($PYTHON_CMD)
# para asegurar que encuentra el binario de Python/pip.

echo "Instalando dependencias desde requirements.txt..."
$PYTHON_CMD -m pip install -r requirements.txt

# --- PASO 2: Ejecución de la Aplicación ---
# Usamos $PYTHON_CMD para iniciar el servidor Gunicorn,
# apuntando al objeto 'app' dentro del archivo 'app.py'.

echo "Iniciando servidor Gunicorn..."
$PYTHON_CMD -m gunicorn app:app --bind 0.0.0.0:$PORT