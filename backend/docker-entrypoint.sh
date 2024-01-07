#!/bin/bash

while ! nc -z db 3306; do
  echo "Waiting for mysql..."
  sleep 0.5
done
echo "mysql started"

# python manage.py migrate
python manage.py runserver 0.0.0.0:8000

exec "$@"
