FROM ruby:2.6.4

WORKDIR /ruby-and-react
RUN gem install bundler
ADD Gemfile Gemfile.lock /ruby-and-react/
RUN bundle install --path vendor/cache
RUN sed -e "s/[#]\?listen_addresses = .*/listen_addresses = '*'/g" -i '/etc/postgresql/9.1/main/postgresql.conf'


RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN apt-get update && apt-get install -y yarn
RUN apt-get install -y nodejs postgresql-client
ENV BUNDLE_PATH /ruby-and-react/.gems
ENV GEM_HOME /ruby-and-react/.gems
