create or replace procedure delete_smoker(pId NUMBER)
is

BEGIN    
    delete from smoker
    where smoker_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Smoker not found');
END;
