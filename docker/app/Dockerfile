FROM rubyroidlabs/ruby:2-5-1-node-stretch

ARG BRANCH=master
ARG REPOSITORY
ARG RAILS_ENV
ARG RAILS_MASTER_KEY

ENV RAILS_ROOT /app

RUN git clone -b $BRANCH --single-branch $REPOSITORY /app

WORKDIR $RAILS_ROOT

RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
