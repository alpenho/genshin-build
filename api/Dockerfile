FROM ruby:2.5.1

ENV BUNDLER_VERSION=2.2.15

WORKDIR /api

RUN gem install bundler -v 2.2.15
COPY Gemfile /api/Gemfile
COPY Gemfile.lock /api/Gemfile.lock
RUN bundle install
COPY . /api

ENTRYPOINT bundle exec puma config.ru