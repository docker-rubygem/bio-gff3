FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.1

RUN gem install bio-gff3 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["gff3-fetch"]
CMD ["--help"]
