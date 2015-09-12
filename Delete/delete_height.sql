create or replace procedure delete_height(pId NUMBER)
is

BEGIN    
    delete from height
    where height_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Height not found');
   
END;
