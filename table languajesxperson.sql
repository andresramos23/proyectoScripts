CREATE TABLE languajesXperson
(
       person_id NUMBER(6),CONSTRAINT pk_languajesxperson_id PRIMARY KEY(person_id),
       languajes_id NUMBER(6)
);

ALTER TABLE languajesXperson     
      ADD CONSTRAINT FK_personid
      FOREIGN KEY (person_id) 
      REFERENCES person(person_id);
    
ALTER TABLE languajesXperson      
      ADD CONSTRAINT FK_languajes
      FOREIGN KEY (languajes_id) 
      REFERENCES languajes(languajes_id);
