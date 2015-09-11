CREATE TABLE hobbieXperson
(
       person_id NUMBER(6),CONSTRAINT pk_hobbieXperson_id PRIMARY KEY(person_id),
       hobbie_id NUMBER(6)
);

ALTER TABLE hobbieXperson     
      ADD CONSTRAINT FK_person_id
      FOREIGN KEY (person_id) 
      REFERENCES person(person_id);
    
ALTER TABLE hobbieXperson      
      ADD CONSTRAINT FK_hobbie
      FOREIGN KEY (hobbie_id) 
      REFERENCES hobbie(hobbie_id);
