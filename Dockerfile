FROM ruby:2.7 
RUN apt-get update -yqq 
RUN apt-get install -yqq --no-install-recommends nodejs 
COPY app
WORKDIR app
EXPOSE 3000
RUN bundle install
CMD bin/rails s -b 0.0.0.

