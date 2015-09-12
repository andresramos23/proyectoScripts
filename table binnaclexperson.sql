CREATE TABLE binnacleXperson
(
       person_id NUMBER(6),CONSTRAINT pk_binnacleXperson_id PRIMARY KEY(person_id),
       binnacle_id NUMBER(6)
);

ALTER TABLE binnacleXperson     
      ADD CONSTRAINT FK_person_binnacle
      FOREIGN KEY (person_id) 
      REFERENCES person(person_id);


ALTER TABLE binnacleXperson     
      ADD CONSTRAINT FK_binnacle_binnacle
      FOREIGN KEY (binnacle_id) 
      REFERENCES binnacle(binnacle_id);
