FROM ruby:2.4.2

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs

RUN mkdir /app
WORKDIR /app

ENV BUNDLE_GEMFILE=/app/Gemfile \
  BUNDLE_JOBS=5 \
  BUNDLE_PATH=/bundle
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
