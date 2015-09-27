create or replace procedure update_person_gender(pPerson_id NUMBER,pGender VARCHAR2)

IS
BEGIN
 UPDATE PERSON
 set gender = pGender
 WHERE person_id = pPerson_Id;


   EXCEPTION
    WHEN zero_divide then
      dbms_output.put_line('Zero divide');

   when dup_val_on_index then
     dbms_output.put_line('Duplicate value');

   when value_error then
     dbms_output.put_line('Error on a conversion,truncation or invalidad constraining');

  when too_many_rows then
     dbms_output.put_line('Error, more than one row was returned');

  when storage_error then
     dbms_output.put_line('Error,memory is full');

  when no_data_found then
     dbms_output.put_line('Error,No rows were returned');

  when others then
     dbms_output.put_line('Error');

 END;
