export VAR1=$SQL_PASSWORD
MYVARS='$VAR1'

envsubst "$MYVARS" <usuarios.sql >_usuarios.sql
rm usuarios.sql