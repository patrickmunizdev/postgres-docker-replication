-- cria um slot de replicação
-- https://hevodata.com/learn/postgresql-replication-slots/
SELECT pg_create_physical_replication_slot('slot_replicacao_master');

-- cria um backup usando pgbasebackup
pg_basebackup -h main -U userbackup -D /var/lib/postgresql/data -v -P -X s -c fast

primary_conninfo = 'host=host port=5432 user=user password=password'

-- obtem diretório do PGDATA
show data_directory;
-- documentações
https://www.postgresql.org/docs/14/wal-intro.html
https://www.postgresql.org/docs/14/functions-admin.html
https://hevodata.com/learn/postgresql-replication-slots/
https://www.postgresql.org/docs/14/app-pgbasebackup.html
https://www.postgresql.org/docs/14/hot-standby.html
https://www.postgresql.org/docs/14/runtime-config-replication.html