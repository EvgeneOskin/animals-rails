#!/bin/bash
bundle exec rake db:migrate
bundle exec unicorn -p $PORT -c ./config/unicorn.rb
