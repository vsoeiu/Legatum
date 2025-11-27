$PYTHON_CMD -m pip install -r requirements.txt
$PYTHON_CMD -m gunicorn app:app --bind 0.0.0.0:$PORT