#!/bin/sh

echo "Run hook"

echo "1. git pull"
git pull

echo "2. docker stack deploy --compose-file docker-compose.yml webapp"
docker stack deploy --compose-file docker-compose.yml webapp

echo "3. mange.py flush --no-input"
docker-compose exec web python mange.py flush --no-input

echo "4. mange.py makemigrations --noinput"
docker-compose exec web python mange.py makemigrations --noinput

echo "5. mange.py migrate --noinput"
docker-compose exec web python mange.py migrate --noinput

echo "6. mange.py collectstatics --noinput"
docker-compose exec web python mange.py collectstatics --noinput

echo "Finish"