create or replace procedure delete_bodytype(pId NUMBER)
is

BEGIN
     
    delete from bodytype
    where bodytype_id = pId;
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Body type not found');
   
END;
