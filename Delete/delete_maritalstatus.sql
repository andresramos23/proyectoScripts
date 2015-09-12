create or replace procedure delete_maritalstatus(pId NUMBER)
is

BEGIN    
    delete from marital_status
    where marital_status_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Marital status not found');
   
END;
