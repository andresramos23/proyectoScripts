create or replace procedure update_binnacle(pId NUMBER, pUsername VARCHAR2,pProfilelink VARCHAR2)
is

BEGIN
    update binnacle
    set user_name= pUsername
    where binnacle_id = pId;
     
    update binnacle
    set profilelink = pProfilelink
    where binnacle_id = pId;
    
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
