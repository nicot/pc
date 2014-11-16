FROM debian
MAINTAINER Nico Tonozzi <nico@nicot.us>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y postfix opendkim

EXPOSE 25

CMD service ssh start && tail -F /home/git/.gitolite/logs/*.log
