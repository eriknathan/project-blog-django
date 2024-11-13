#!/bin/sh

echo "🟡 >> Rodando CollectStatic..."
python manage.py collectstatic --noinput
