#!/bin/bash

/var/app_docker_env/venv/bin/uwsgi --socket python:8282 --uid www-py --enable-threads --master --wsgi-file=/var/app/app.py --callable app
