#! /usr/bin/env bash

set -e

talisker.gunicorn.gevent webapp.app:app --reload --log-level debug --timeout 9999 --access-logfile - --worker-class gevent --error-logfile - --bind $1
