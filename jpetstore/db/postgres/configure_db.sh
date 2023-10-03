#!/bin/bash
#set the env variable so that the interactive password terminal does not appear
export PGPASSWORD=<db-password>

# load the schema into the database
if [ -f /tmp/postgres/jpetstore-postgres-schema.sql ] ; then
	psql -d mydb -U <db-user-name> -a -f /tmp/postgres/jpetstore-postgres-schema.sql
fi

# load the data into the database
if [ -f /tmp/postgres/jpetstore-postgres-dataload.sql ] ; then
	psql -d mydb -U <db-user-name> -a -f /tmp/postgres/jpetstore-postgres-dataload.sql
fi
