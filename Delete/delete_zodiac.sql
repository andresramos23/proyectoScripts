create or replace procedure delete_zodiac(pId NUMBER)
is

BEGIN    
    delete from zodiac
    where zodiac_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Zodiac not found');
   
END;
