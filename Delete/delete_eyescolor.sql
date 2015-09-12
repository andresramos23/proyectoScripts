create or replace procedure delete_eyescolor(pId NUMBER)
is

BEGIN    
    delete from eyes_color
    where eyes_color_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Eyes color not found');
   
END;
