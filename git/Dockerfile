FROM debian
MAINTAINER Nico Tonozzi <nico@nicot.us>

RUN apt-get update && apt-get install --no-install-recommends -y openssh-server git
RUN useradd git
RUN mkdir -p /home/git/bin
RUN git clone git://github.com/sitaramc/gitolite /home/git/gitolite
RUN /home/git/gitolite/install -to /home/git/bin
ADD admin.pub /tmp/admin.pub
RUN chown -R git:git /home/git
RUN su - git -c '/home/git/bin/gitolite setup -pk /tmp/admin.pub'
RUN mkdir /var/run/sshd

EXPOSE 22

CMD service ssh start && tail -F /home/git/.gitolite/logs/*.log
