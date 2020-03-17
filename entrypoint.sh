#!/usr/bin/env bash
cd application && python manage.py collectstatic --no-input
gunicorn --chdir application --bind :80 application.wsgi:application --reload
