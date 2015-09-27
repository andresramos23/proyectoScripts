ALTER TABLE person
  ADD bodytype_id NUMBER(6);

ALTER TABLE person    
      ADD CONSTRAINT FK_bodytype_person
      FOREIGN KEY (bodytype_id) 
      REFERENCES bodytype(bodytype_id);
