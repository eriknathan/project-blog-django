#!/bin/sh

# O shell irá encerrar a execução do script quando um comando falhar
set -e

echo "--------------------------------------------------------------------------"
while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  echo "🟡 Waiting for Postgres Database Startup ($POSTGRES_HOST $POSTGRES_PORT) ..."
  sleep 2
done
echo "--------------------------------------------------------------------------"
echo "✅ Postgres Database Started Successfully ($POSTGRES_HOST:$POSTGRES_PORT)"
echo "--------------------------------------------------------------------------"
collectstatic.sh
echo "--------------------------------------------------------------------------"
migrate.sh
echo "--------------------------------------------------------------------------"
runserver.sh
echo "--------------------------------------------------------------------------"