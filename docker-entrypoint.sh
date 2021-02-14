#!/bin/bash --login

export PATH="/usr/local/bundle/bin:$PATH"
#bundle check || bundle install

#entrypoint for docker
#if [ "$1" = 'default' ]; then
#  echo 'Starting Ironman web server...'
#
  rm -rf tmp/pids/server.pid
#  bundle exec rails s -b '0.0.0.0' -p 4000
#else
#  bundle exec "$@"
#fi

"$@"
