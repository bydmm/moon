FROM ruby:2.4.1

ENV APP_HOME = "/app"
ENV RAILS_ENV = "production"

COPY ./sources.list /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y --force-yes -V \
    git curl htop \
    zlib1g-dev build-essential \
    libssl-dev libcurl4-openssl-dev \
    libyaml-dev libmysqlclient-dev \
    && apt-get clean

RUN mkdir $APP_HOME

ADD ./Gemfile* $APP_HOME/

RUN cd $APP_HOME/ \
    && ls

RUN cd $APP_HOME/ \
    && ls \
    && bundle install

ADD . $APP_HOME

RUN cd $APP_HOME/ \
    && bundle exec rake assets:precompile

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh \
    && ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["run"]
