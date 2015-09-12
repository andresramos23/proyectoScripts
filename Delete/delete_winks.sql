create or replace procedure delete_winks(pId NUMBER)
is

BEGIN    
    delete from winks
    where winks_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Wink not found');
END;
