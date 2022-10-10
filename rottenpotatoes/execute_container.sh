#!/bin/sh

echo "Executing test environment container ..."

docker-compose run --rm rails-cucumber rake db:migrate RAILS_ENV=test
docker-compose run --rm rails-cucumber bash