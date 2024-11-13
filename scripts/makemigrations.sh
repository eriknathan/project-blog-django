#!/bin/sh

echo "🟡 >> Rodando Make Migrations..."
python manage.py makemigrations --noinput
