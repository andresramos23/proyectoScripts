CREATE TABLE matchXperson
(
       person_id NUMBER(6),CONSTRAINT pk_matchxperson_id PRIMARY KEY(person_id),
       match_id NUMBER(6)
);

ALTER TABLE matchXperson     
      ADD CONSTRAINT FK_person_macth_id
      FOREIGN KEY (person_id) 
      REFERENCES person(person_id);
    
ALTER TABLE matchXperson      
      ADD CONSTRAINT FK_match
      FOREIGN KEY (match_id) 
      REFERENCES match(match_id);
