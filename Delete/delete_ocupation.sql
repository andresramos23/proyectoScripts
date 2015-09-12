create or replace procedure delete_ocupation(pId NUMBER)
is

BEGIN    
    delete from ocupation
    where ocupation_id = pId;  

   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Ocupation not found');
   
END;
