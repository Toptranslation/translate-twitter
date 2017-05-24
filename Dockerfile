FROM ruby:2.3.4

RUN apt-get update -qq && apt-get install -y build-essential
# for mysql
RUN apt-get install -y mysql-client sqlite3 libsqlite3-dev
# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev
# for capybara-webkit
RUN apt-get install -y libqt4-webkit libqt4-dev xvfb
# for a JS runtime
RUN apt-get install -y nodejs
# for ruby-filemagic
RUN apt-get install -y  libmagic-dev
# Cron-jobs
RUN apt-get install -y  cron


ENV APP_HOME /translate-twitter
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME

RUN whenever --write-crontab
