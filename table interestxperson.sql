CREATE TABLE interestXperson
(
       person_id NUMBER(6),CONSTRAINT pk_interestXperson_id PRIMARY KEY(person_id),
       interest_id NUMBER(6)
);

ALTER TABLE interestXperson     
      ADD CONSTRAINT FK_person_interestxperson
      FOREIGN KEY (person_id) 
      REFERENCES person(person_id);
    
ALTER TABLE interestXperson      
      ADD CONSTRAINT FK_interest_interestxperson
      FOREIGN KEY (interest_id) 
      REFERENCES interest(interest_id);
