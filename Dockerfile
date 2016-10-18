FROM mysql:5.7
MAINTAINER douglasralmeida <douglasralmeida@live.com>

COPY _usuarios.sql /docker-entrypoint-initdb.d
COPY bhsul.gestaosite.sql /docker-entrypoint-initdb.d

RUN sed -i 's/SQL_PASSWORD/$SQL_PASSWORD/g' /docker-entrypoint-initdb.d/_usuarios.sql