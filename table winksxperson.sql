CREATE TABLE winksXperson
(
       person_id NUMBER(6),CONSTRAINT pk_winksxperson_id PRIMARY KEY(person_id),
       winks_id NUMBER(6)
);

ALTER TABLE winksXperson     
      ADD CONSTRAINT FK_person
      FOREIGN KEY (person_id) 
      REFERENCES person(person_id);
    
ALTER TABLE winksXperson      
      ADD CONSTRAINT FK_winks
      FOREIGN KEY (winks_id) 
      REFERENCES winks(winks_id);
