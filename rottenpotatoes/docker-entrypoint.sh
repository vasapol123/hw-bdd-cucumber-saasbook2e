#!/bin/bash
set -e

rake db:migrate RAILS_ENV=test

bundle exec cucumber

exec "$@"