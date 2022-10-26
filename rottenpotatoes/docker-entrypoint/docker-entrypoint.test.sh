#!/bin/bash
set -e

FILE=./db/test.sqlite3

if [[ ! -e "$FILE" ]]; then
  # "Migrate"
  rake db:migrate RAILS_ENV=test
fi

exec "$@"