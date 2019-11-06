FROM ruby:1.9
ENV RAILS_ENV=production

WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
USER root
RUN gem install bundler -v 1.1.5
RUN bundle install

COPY . .

CMD bundle exec passenger start -p 3001
