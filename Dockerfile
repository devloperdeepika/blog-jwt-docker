FROM ruby:2.7.6

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /blog

WORKDIR /blog

ADD Gemfile /blog/Gemfile

Add Gemfile.lock /blog/Gemfile.lock

RUN bundle install

ADD . /blog