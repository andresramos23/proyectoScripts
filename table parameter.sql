CREATE TABLE parameter
(
       parameter_id NUMBER(6),CONSTRAINT pk_parameter PRIMARY KEY(parameter_id),
       parameter_name VARCHAR2(25),
       parameter_description VARCHAR2(100),
       parameter_value NUMBER(8)       
);
