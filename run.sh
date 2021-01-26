#!/bin/bash

exec python manage.py makemigrations
exec python manage.py migrate
exec python manage.py createsuperuser --username USER1 --email 'anya.starovoytova@inbox.ru' --noinput
exec python manage.py runserver