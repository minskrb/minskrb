FROM rubyroidlabs/ruby:2-5-1-node-stretch

ARG BRANCH
ARG REPOSITORY

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

RUN apt-get update -qq && apt-get install -y yarn

ENV RAILS_ROOT /app

RUN git clone -b $BRANCH --single-branch $REPOSITORY /app

WORKDIR $RAILS_ROOT

RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
