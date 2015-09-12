create or replace procedure delete_interest(pId NUMBER)
is

BEGIN    
    delete from interest
    where interest_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Interest not found');
   
END;
