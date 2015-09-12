create or replace procedure delete_haircolor(pId NUMBER)
is

BEGIN    
    delete from hair_color
    where hair_color_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Hair color not found');
   
END;
