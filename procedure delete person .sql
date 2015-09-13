create or replace procedure delete_person_academictraining(pPerson_id NUMBER)

IS
BEGIN
 delete PERSON
 WHERE person_id = pPerson_Id;
 
 
   EXCEPTION 
  when no_data_found then 
     dbms_output.put_line('Error,No rows were returned');
     
  when others then 
     dbms_output.put_line('Error');

 END;
