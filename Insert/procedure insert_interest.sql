create or replace procedure insert_interest(pName VARCHAR2)
is
val number;

BEGIN
    val :=s_interest.nextval();
    insert into interest(interest_id, interestname)
    VALUES (val,pName);
    
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
