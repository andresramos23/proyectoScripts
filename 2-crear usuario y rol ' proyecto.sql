-- Conectado desde System
CREATE USER proyecto1
       IDENTIFIED BY proyecto1
       DEFAULT TABLESPACE proyecto_data
       QUOTA 10M ON proyecto_data
       TEMPORARY TABLESPACE temp
       QUOTA 5M ON system;

       
-------------------------------------------------
create ROLE proyecto1
       IDENTIFIED BY proyecto1;
------------------
GRANT CONNECT TO proyecto1;


-------------------------------------------------
-- GRANT EXECUTE on schema.procedure TO username;
-------------------------------------------------
grant create public synonym to proyecto1;
------------------------------------------------
grant create session to proyecto1;

grant create table to proyecto1;
