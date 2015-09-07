-- GE: DATA
CREATE TABLESPACE PROYECTO_DATA
       DATAFILE 'C:\app\Bases\oradata\proyecto1\proyectodata01.dbf'
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512K
       MAXSIZE 200M;
--
-- GE: INDEX

CREATE TABLESPACE PROYECTO_Ind
       DATAFILE 'C:\app\Bases\oradata\proyecto1\proyectoind01.dbf'
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512K
       MAXSIZE 200M;
       
