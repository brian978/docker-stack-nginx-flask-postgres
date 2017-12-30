#!/bin/bash

if [ ! -d "/var/app/venv" ]; then
    cp -R /var/app_default/venv /var/app/venv

    echo "Deploying default virtual environment"
fi

/var/app/venv/bin/uwsgi --socket python:8282 --uid www-py --enable-threads --master --wsgi-file=/var/app/app.py --callable app
