FROM rubyroidlabs/ruby:2-5-1-node-stretch

ARG BRANCH=master
ARG REPOSITORY
ARG RAILS_ENV
ARG RAILS_MASTER_KEY

ENV RAILS_ROOT /app

RUN git clone -b $BRANCH --single-branch $REPOSITORY /app

WORKDIR $RAILS_ROOT

RUN bundle install

RUN RAILS_ENV=production NODE_ENV=production rails assets:precompile

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
