FROM ruby:4.0.5-slim

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  build-essential \
  nano \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
RUN useradd -ms /bin/bash alexey
USER alexey

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY --chown=alexey:alexey . .

CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0", "-p", "4567"]
