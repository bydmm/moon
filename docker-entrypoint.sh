#!/bin/bash

if [ "$1" = 'run' ]; then
    echo "[RUN]: server"
    cd ${APP_HOME}
    bundle exec rake db:migrate
    bundle exec rails s
else
    echo "[RUN]: $@"
    exec "$@"
fi
