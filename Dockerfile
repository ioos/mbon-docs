FROM ubuntu:24.04

RUN apt update && apt install -y build-essential git ruby-full zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /docs && chown ubuntu:ubuntu /docs

WORKDIR /docs

USER ubuntu

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV GEM_HOME=/home/ubuntu/gems
ENV PATH=$PATH:/home/ubuntu/gems/bin
ENV JEKYLL_ENV=production

RUN gem install jekyll bundler

COPY --chown=ubuntu:ubuntu Gemfile .

RUN bundle install

COPY --chown=ubuntu:ubuntu . .

RUN git config --global --add safe.directory /docs

RUN git submodule update --init

CMD ["bundle", "exec", "jekyll", "serve", "--config", "_config.yml", "--host", "0", "--baseurl", ""]
