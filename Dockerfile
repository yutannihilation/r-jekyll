FROM rocker/hadleyverse

# Jekyll
RUN apt-get update && apt-get install ruby ruby-dev nodejs -y
RUN gem install jekyll
RUN gem install github-pages
EXPOSE 4000

RUN install2.r \
	servr

RUN git clone https://github.com/yihui/knitr-jekyll.git /home/rstudio/knitr-jekyll && chown -R rstudio /home/rstudio/knitr-jekyll
