create or replace procedure delete_hobbie(pId NUMBER)
is

BEGIN    
    delete from hobbie
    where hobbie_id = pId;    
    
   EXCEPTION 
   when no_data_found then
      dbms_output.put_line('Hobbies not found');
   
END;
