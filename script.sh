envsubst </docker-entrypoint-initdb.d/usuarios.sql>/docker-entrypoint-initdb.d/_usuarios.sql
tail /docker-entrypoint-initdb.d/_usuarios.sql
rm /docker-entrypoint-initdb.d/usuarios.sql