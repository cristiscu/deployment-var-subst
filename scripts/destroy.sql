-- have variable substitution ON
!SET VARIABLE_SUBSTITUTION=true;

USE ROLE ACCOUNTADMIN;
DROP DATABASE IF EXISTS &{tenant}_DB_&{env} CASCADE;
DROP WAREHOUSE IF EXISTS &{tenant}_ELT_&{env};
DROP WAREHOUSE IF EXISTS &{tenant}_APP_&{env};

DROP ROLE IF EXISTS &{tenant}_SYSADMIN_&{env};
DROP ROLE IF EXISTS &{tenant}_ELT_&{env};
DROP ROLE IF EXISTS &{tenant}_APP_&{env};
DROP ROLE IF EXISTS &{tenant}_RW_&{env};
DROP ROLE IF EXISTS &{tenant}_RO_&{env};