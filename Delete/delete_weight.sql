create or replace procedure delete_weight(pId NUMBER)
is

BEGIN    
    delete from weight
    where weight_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Weight not found');
   
END;
