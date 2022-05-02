Deployment Script with Variable Substitution in SnowSQL
=======================================================

How to create a Snowflake SQL script using SnowSQL's [variable substitution](https://docs.snowflake.com/en/user-guide/snowsql-use.html#enabling-variable-substitution) method, to generate custom database objects, for multi-tenant applications or different environments (prod/test/dev etc).

* [Install SnowSQL](https://docs.snowflake.com/en/user-guide/snowsql-install-config.html).  
* Customize your "my_conn" Snowflake connection in the C:\users\your_name\.snowsql\config file.  
* From VSC, open a Terminal window and switch to the \scripts subfolder.  
* Run a script the typical way: **<code>snowsql -c my_conn -f create_ACME_DEV.sql</code>**.  
* Destroy the previously created resources: **<code>snowsql -c my_conn -f destroy_ACME_DEV.sql</code>**.  
* Run a script using variable substitution: **<code>snowsql -c my_conn -f create.sql -D tenant=NETFLIX -D env=PROD</code>**.  
* Destroy the previously created resources: **<code>snowsql -c my_conn -f destroy.sql -D tenant=NETFLIX -D env=PROD</code>**.  