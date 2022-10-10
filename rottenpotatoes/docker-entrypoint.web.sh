#!/bin/bash
set -e

FILE=./db/development.sqlite3

if [[ ! -e "$FILE" ]]; then
  # "Migrate"
  rake db:migrate RAILS_ENV=development
fi

exec "$@"