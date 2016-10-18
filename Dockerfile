FROM mysql:5.7
MAINTAINER douglasralmeida <douglasralmeida@live.com>

COPY script.sh /docker-entrypoint-initdb.d
COPY _usuarios.sql /docker-entrypoint-initdb.d
COPY bhsul.gestaosite.sql /docker-entrypoint-initdb.d

ENTRYPOINT ["/docker-entrypoint-initdb.d/script.sh"]