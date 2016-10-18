FROM mysql:5.7
MAINTAINER douglasralmeida <douglasralmeida@live.com>

COPY script.sh /tmp
COPY usuarios.sql /docker-entrypoint-initdb.d
COPY bhsul.gestaosite.sql /docker-entrypoint-initdb.d

RUN chmod 700 /tmp/script.sh
RUN /tmp/script.sh