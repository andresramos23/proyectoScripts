create or replace procedure insert_event(pName VARCHAR2, pDate DATE, pCountry VARCHAR2, pCity VARCHAR2, pTime VARCHAR2, pDescription VARCHAR2, pPerson_id NUMBER)
is
val number;

BEGIN
    val :=s_event.nextval();
    insert into event(event_id, event_name, event_date, country, city, event_time, event_description, person_id)
        VALUES (val,pName,pDate,pCountry,pCity,pTime,pDescription, pPerson_id);
    
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
