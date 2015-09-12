create or replace procedure delete_skincolor(pId NUMBER)
is

BEGIN    
    delete from skincolor
    where skincolor_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Skin color not found');
   
END;
