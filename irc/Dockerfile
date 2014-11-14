FROM debian
MAINTAINER Nico Tonozzi <nico@nicot.us>

RUN apt-get update && apt-get install -y inspircd
RUN echo INSPIRCD_ENABLED=1 > /etc/default/inspircd
ADD inspircd.conf /etc/inspircd/inspircd.conf

EXPOSE 6667

CMD service inspircd start && tail -F /var/log/inspircd.log
