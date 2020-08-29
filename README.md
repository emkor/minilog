# minilog
Example showing how to set up forwarding incoming logs in syslog format using rsyslog server into PostgreSQL database for further log management and visualization  

### usage
Just run `docker-compose up` in main directory, four containers starts:
- one having PostgreSQL with pre-created tables using `pgsql/init/log_init.sql`
- one having rsyslog server, exposing port 10514 using TCP and UDP
- example python app configured to log in syslog format into the rsyslog container
- adminer UI on port 8080 for verifying logged content in PostgreSQL (use `infra` for both user and password, `postgres` as DB server and `log` as DB name)