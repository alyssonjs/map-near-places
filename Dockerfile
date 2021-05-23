# syntax=docker/dockerfile:1
FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y postgresql-client
RUN mkdir /map-near-places
WORKDIR /map-near-places
COPY Gemfile /map-near-places/Gemfile
COPY Gemfile.lock /map-near-places/Gemfile.lock
RUN gem install bundler:2.2.15
RUN bundle install
COPY . /map-near-places

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]