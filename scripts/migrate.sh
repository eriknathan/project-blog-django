#!/bin/sh

echo "🟡 >> Rodando Migrate..."
makemigrations.sh
python manage.py migrate --noinput
