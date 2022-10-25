#!/bin/bash
set -e

FILE=./db/production.sqlite3

if [[ ! -e "$FILE" ]]; then
  # "Migrate"
  rake db:migrate RAILS_ENV=production
fi

exec "$@"
