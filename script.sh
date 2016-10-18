export VAR1=$SQL_PASSWORD
MYVARS='$VAR1'

envsubst "$MYVARS" </docker-entrypoint-initdb.d/usuarios.sql >/docker-entrypoint-initdb.d/_usuarios.sql
rm /docker-entrypoint-initdb.d/usuarios.sql