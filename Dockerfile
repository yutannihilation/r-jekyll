FROM rocker/hadleyverse

# Jekyll
RUN apt-get update && apt-get install ruby ruby-dev nodejs -y
RUN gem install github-pages
EXPOSE 4000

RUN install2.r \
	servr
