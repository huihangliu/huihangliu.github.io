# https://hub.docker.com/_/ruby/
FROM ruby:2.5

# copy the code into the container
COPY . /blog
# use this as the default dir for executing stuff
WORKDIR /blog
# install required gems. 
RUN bundle install

# need the --host since by default jekyll serve puts it at 127.0.0.1, which
#  is apparently only accessible from within the container, so if we want
#  to access it from outside it has to be 0.0.0.0.  
#  see https://github.com/moby/moby/issues/28121
CMD bundle exec jekyll serve --host 0.0.0.0
