create or replace procedure delete_religion(pId NUMBER)
is

BEGIN    
    delete from religion
    where religion_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Religion not found');
   
END;
