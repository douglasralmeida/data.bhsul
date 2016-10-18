FROM mysql:5.7
MAINTAINER douglasralmeida <douglasralmeida@live.com>

EXPOSE 3306

COPY _usuarios.sql /docker-entrypoint-initdb.d
COPY bhsul.gestaosite.sql /docker-entrypoint-initdb.d

RUN sed -i -- 's/PASSWORD_REPLACE/$SQL_PASSWORD/g' /docker-entrypoint-initdb.d/*