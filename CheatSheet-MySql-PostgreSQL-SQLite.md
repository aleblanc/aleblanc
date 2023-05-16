
---------

## SQL

### MySQL taille db et tables

``` sql
    SELECT table_schema "Databases", sum( data_length + index_length) / 1024 / 1024 "Size of DB in MB" 
    FROM information_schema. TABLES GROUP BY table_schema;
``` 

### MySQL taille DB

``` sql
    SELECT table_name AS "Tables", round(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
    FROM information_schema.tables
    WHERE table_schema =  'DB_NAME';
``` 

### Créer un update SQL avec un select

``` sql
    SELECT CONCAT('UPDATE table SET champ1=',champ1,',champ2=',champ2,',champ3=',champ3,' WHERE champ0="',REPLACE(champs,'DC','DD'),'"' ) as query 
    FROM table 
    WHERE champ LIKE 'DC%';
``` 

### MySQL DATE CONVERSION TIMESTAMP
``` sql
    SELECT *,FROM_UNIXTIME(created) 
    FROM `table`
    WHERE Date(FROM_UNIXTIME(created))>DATE('2017-08-15 00:00:01')
        AND Date(FROM_UNIXTIME(created))<DATE('2017-10-06 00:00:01')
``` 


### MySQL UPDATE avec inner jointures
``` sql
    UPDATE table as t1 
    INNER JOIN table2 as t2 ON t1.xxx_id=t2.id 
    SET  t1.yyyy=""
    WHERE t2.xxxx>0;
``` 

### MySQL RegExp and Replace
``` sql						
    UPDATE `ezcontentobject_attribute` t1 
    JOIN `database`.`ezcontentobject_attribute` t2 
        ON t1.id = t2.id AND t1.version = t2.version AND (
            t2.data_text REGEXP 'abcdef_[[:digit:]]+_fr'
        ) 
    SET t1.data_text = REPLACE( t1.data_text, '_fr', '' ) ;	
``` 

### Exporter une table SQL en CSV

``` zsh
    mysql -B -u user -p --default-character-set=utf8 database -e "SELECT * FROM table;" |sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > table.csv
``` 


### MySQL dump avec compression gz
``` shell
    mysqldump -u user -p pass mabase | gzip -v > mabase.gz
``` 

### MySQL importer un dump
``` shell
    mysql -u user -p --default-character-set=utf8 --max_allowed_packet=64M mabase < ~/mabase.sql
``` 

### Installer mariadb et désactiver le strict mode

	curl -fsSL https://mariadb.org/mariadb_release_signing_key.asc | sudo gpg --dearmor -o /usr/share/keyrings/mariadb-keyring.gpg
	echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/mariadb-keyring.gpg] http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.6/debian bullseye main' | sudo tee /etc/apt/sources.list.d/mariadb.list
	sudo apt update
	sudo apt install -y mariadb-server mariadb-client
	sudo mysql_secure_installation

	nano /etc/mysql/my.cnf
	[mysqld]
	sql_mode=NO_ENGINE_SUBSTITUTION

### PostgreSQL : Installer et configuration de Symfony

	sudo apt-get install postgresql postgresql-client
	sudo apt-get install php7.4-pgsql

	sudo passwd postgres
	su postgres
	psql
	postgres=# help
	postgres=# CREATE USER USERNAME WITH PASSWORD 'xxx';
	postgres=# CREATE DATABASE "DATABASENAME";
	postgres=# GRANT ALL ON DATABASE "DATABASENAME" TO USERNAME;

	nano .env.locale 
	DATABASE_URL=postgresql://USERNAME:xxx@127.0.0.1:5432/DATABASENAME?serverVersion=11&charset=utf8

### Dump / import PostgreSQL

	pg_dump -U user -h localhost --no-owner --no-privileges -Fc database > database.sql
	pg_restore -d database  -U user -h localhost -v --no-owner --role=USERNAME -c  database.sql

### Install last version of Sqlite dans PHP avec SQLITE_ENABLE_MATH_FUNCTIONS (les fonctions de mathématiques)

	wget https://www.sqlite.org/2022/sqlite-amalgamation-3400100.zip
	unzip sqlite-amalgamation-3400100.zip
	cd sqlite-amalgamation-3400100/
	gcc -Wl,-soname,libsqlite3.so.0 -DSQLITE_ENABLE_MATH_FUNCTIONS -DSQLITE_DISABLE_DIRSYNC -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_UNLOCK_NOTIFY -DSQLITE_SECURE_DELETE -DSQLITE_TEMP_STORE=1 -DSQLITE_DTHREADSAFE=1 -shared -o libsqlite3.so -fPIC sqlite3.c
	sudo service php7.4-fpm stop
	sudo mv /usr/lib/x86_64-linux-gnu/libsqlite3.so.0.8.6 /usr/lib/x86_64-linux-gnu/libsqlite3.so.0.8.6.old
	sudo mv libsqlite3.so /usr/lib/x86_64-linux-gnu/libsqlite3.so.0.8.6
	sudo service php7.4-fpm start

