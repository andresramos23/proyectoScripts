create or replace procedure delete_usertype(pId NUMBER)
is

BEGIN    
    delete from user_type
    where user_type_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('User type not found');
   
END;
