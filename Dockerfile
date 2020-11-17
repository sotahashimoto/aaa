FROM ruby:2.5.7
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    yarn
WORKDIR /aaa
COPY Gemfile Gemfile.lock /aaa/
RUN bundle install