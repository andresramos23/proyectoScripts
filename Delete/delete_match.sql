create or replace procedure delete_match(pId NUMBER)
is

BEGIN    
    delete from match
    where match_id = pId;  
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Match not found');
   
END;
