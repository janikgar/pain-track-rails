FROM ruby:2.5.1-alpine
LABEL maintainer=janikgar@pm.me
RUN mkdir /app
ADD Gemfile /app
ADD Gemfile.lock /app
ENV BUILD_PACKAGES bash build-base curl-dev git ruby-dev
RUN apk update && apk upgrade && \
  apk add $BUILD_PACKAGES && \
  gem install bundler --no-ri --no-rdoc && \
  cd /app; bundle install && \
  # apk del build-dependencies
  rm -rf /var/cache/apk/*
ADD . /app
RUN chown -R nobody:nogroup /app
USER nobody
ENV RACK_ENV development
EXPOSE 3000
WORKDIR /app