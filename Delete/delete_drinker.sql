create or replace procedure delete_drinker(pId NUMBER)
is

BEGIN    
    delete from drinker
    where drinker_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Drinker not found');
END;
