FROM debian
MAINTAINER Nico Tonozzi <nico@nicot.us>

RUN apt-get update && apt-get install -y git make gcc groff
RUN git clone git://git.openldap.org/openldap.git
WORKDIR /openldap
RUN ./configure
RUN make depend
RUN CFLAGS=-static CPPFLGAS=-static make
RUN apt-get install -y strace

RUN sed -i 's/%SYSCONFDIR%/\/openldap\/servers\/slapd/' /openldap/servers/slapd/slapd.conf
RUN mkdir /var/openldap-data/
RUN sed -i 's/%LOCALSTATEDIR%/\/var/' /openldap/servers/slapd/slapd.conf
#RUN sed -i 's/%MODULEDIR%/\/openldap\/servers\/slapd\/schema/' /openldap/servers/slapd/slapd.conf

CMD /openldap/servers/slapd/slapd -d 256 -f /openldap/servers/slapd/slapd.conf
