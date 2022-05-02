Deployment Script with Variable Substitution in SnowSQL
=======================================================

How to create a Snowflake SQL script using SnowSQL's [variable substitution](https://docs.snowflake.com/en/user-guide/snowsql-use.html#enabling-variable-substitution) method, to generate custom database objects, for multi-tenant applications or different environments (prod/test/dev etc).

* [Install SnowSQL](https://docs.snowflake.com/en/user-guide/snowsql-install-config.html).  
* Customize your "my_conn" Snowflake connection in the C:\users\your_name\.snowsql\config file.  
* [Set variable substitution ON](https://docs.snowflake.com/en/user-guide/snowsql-use.html#enabling-variable-substitution) with **<code>!SET VARIABLE_SUBSTITUTION=true;</code>** at the beginning of your SQL script.  
* Customize the values of the -D variables in the SnowSQL command line below.  
* Call SnowSQL from a Terminal with something like **<code>snowsql -c my_conn -f script.sql -D tenant=ACME -D env=DEV</code>**.  