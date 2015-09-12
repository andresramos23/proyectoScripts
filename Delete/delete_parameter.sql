create or replace procedure delete_parameter(pId NUMBER)
is

BEGIN    
    delete from parameter
    where parameter_id = pId;  
        
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Parameter not found');
   
END;
