FROM ruby:latest

# Base image FROM ruby:latest
ENV HOME /home/rails/webapp
# Install PGsql dependencies and js engine
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR $HOME
# Install gems
ADD Gemfile* $HOME/
RUN bundle install

ADD . $HOME
CMD ./run.sh
