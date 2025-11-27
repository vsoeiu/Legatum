#!/bin/bash

# $PYTHON_CMD apunta al ejecutable de Python instalado por Railway.

# 1. Instala dependencias con el comando de Python
$PYTHON_CMD -m pip install -r requirements.txt

# 2. Inicia la aplicación usando el comando de Python y gunicorn
$PYTHON_CMD -m gunicorn app:app